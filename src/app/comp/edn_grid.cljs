
(ns app.comp.edn-grid
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp cursor-> action-> mutation-> list-> <> div button textarea span]]
            [respo.comp.space :refer [=<]]
            [respo-md.comp.md :refer [comp-md]]
            [respo.comp.inspect :refer [comp-inspect]]))

(declare comp-data)

(declare comp-list)

(declare comp-map)

(declare comp-set)

(declare comp-vector)

(def style-folded
  {:background-color (hsl 260 80 70),
   :color :white,
   :padding "0px 6px",
   :display :inline-block,
   :line-height "20px",
   :height "20px",
   :border-radius "2px",
   :cursor :pointer})

(defcomp
 comp-vector
 (states data)
 (let [state (or (:data states) false)]
   (div
    {:style ui/row}
    (div
     {:style {:padding "2px 4px", :cursor :pointer},
      :inner-text "[]",
      :on-click (fn [e d! m!] (m! (not state)))})
    (if state
      (div {:style style-folded, :on-click (fn [e d! m!] (m! (not state)))} (<> "folded"))
      (list->
       {:style {:border-left (str "1px solid " (hsl 0 60 90)), :padding "2px 4px"}}
       (->> data (map-indexed (fn [idx child] [idx (cursor-> idx comp-data states child)]))))))))

(defcomp
 comp-set
 (states data)
 (div
  {:style ui/row}
  (div {:style {:padding "2px 4px"}, :inner-text "#{}"})
  (list->
   {:style {:border-left (str "1px solid " (hsl 0 170 90)), :padding "2px 4px"}}
   (->> data
        (map-indexed (fn [idx child] [idx (div {} (cursor-> idx comp-data states child))]))))))

(defcomp
 comp-map
 (states data)
 (let [state (or (:data states) false)]
   (div
    {:style ui/row}
    (div
     {:style {:padding "2px 4px", :cursor :pointer},
      :on-click (fn [e d! m!] (m! (not state))),
      :inner-text "{}"})
    (if state
      (div {:style style-folded, :on-click (fn [e d! m!] (m! (not state)))} (<> "folded"))
      (list->
       {:style {:display :grid,
                :grid-template-columns "1fr 100fr",
                :grid-gap "0px",
                :border-left (str "1px solid " (hsl 200 80 80))}}
       (->> data
            (map
             (fn [[k child]]
               [[k
                 (div
                  {:style {:padding "2px 4px", :white-space :nowrap}}
                  (cursor-> k comp-data states k))]
                (let [path (str k "-value")]
                  [path
                   (div
                    {:style {:padding "2px 4px"}}
                    (or (cursor-> path comp-data states child)
                        (<> (str "Special:" (pr-str child)))))])]))
            (apply concat)))))))

(defcomp
 comp-list
 (states data)
 (let [state (or (:data states) false)]
   (div
    {:style ui/row}
    (div
     {:style {:padding "2px 4px", :cursor :pointer},
      :on-click (fn [e d! m!] (m! (not state))),
      :inner-text "()"})
    (if state
      (div {:style style-folded, :on-click (fn [e d! m!] (m! (not state)))} (<> "folded"))
      (list->
       {:style {:border-left (str "1px solid " (hsl 40 170 90)), :padding "2px 4px"}}
       (->> data
            (map-indexed
             (fn [idx child] [idx (div {} (cursor-> idx comp-data states child))]))))))))

(defcomp
 comp-data
 (states data)
 (cond
   (map? data) (comp-map states data)
   (vector? data) (comp-vector states data)
   (set? data) (comp-set states data)
   (list? data) (comp-list states data)
   (string? data) (<> (pr-str data) {:color (hsl 130 80 40), :margin "0 8px"})
   (number? data) (<> (str data) {:color :blue, :margin "0 8px"})
   (keyword? data) (<> (str data) {:color (hsl 240 80 76), :margin "0 8px"})
   (nil? data) (<> "nil" {:color :red, :margin "0 8px"})
   (symbol? data) (<> (str data) {:color :red, :margin "0 8px"})
   (or (= true data) (= false data)) (<> (str data) {:color :blue})
   :else (<> (pr-str data) {:color :red})))

(defcomp
 comp-edn-grid
 (states data)
 (div
  {:style {:line-height "18px", :font-family ui/font-code, :font-size 12}}
  (cursor-> :root comp-data states data)))
