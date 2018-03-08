
(ns app.comp.edn-grid
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> list-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [respo-md.comp.md :refer [comp-md]]
            [respo-ui.comp.icon :refer [comp-icon]]
            [respo.comp.inspect :refer [comp-inspect]]))

(declare comp-data)

(declare comp-list)

(declare comp-map)

(declare comp-set)

(declare comp-vector)

(defcomp
 comp-vector
 (states data)
 (div
  {:style ui/row}
  (div {:style {:padding 4}} (<> "[]" {}))
  (list->
   {:style {:border-left (str "1px solid " (hsl 0 60 90)), :padding 4}}
   (->> data
        (map-indexed (fn [idx child] [idx (div {} (cursor-> idx comp-data states child))]))))))

(defcomp
 comp-set
 (states data)
 (div
  {:style ui/row}
  (div {:style {:padding 4}} (<> "#{}" {}))
  (list->
   {:style {:border-left (str "1px solid " (hsl 0 170 90)), :padding 4}}
   (->> data
        (map-indexed (fn [idx child] [idx (div {} (cursor-> idx comp-data states child))]))))))

(defcomp
 comp-map
 (states data)
 (let [state (or (:data states) false)]
   (div
    {:style ui/row}
    (div
     {:style {:padding 4, :cursor :pointer}, :on-click (fn [e d! m!] (m! (not state)))}
     (<> "{}" {}))
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
                {:style {:padding 4, :white-space :nowrap}}
                (cursor-> k comp-data states k))]
              (let [path (str k "-value")]
                [path
                 (if state
                   (div
                    {:style {:padding 4}}
                    (<>
                     "folded"
                     {:background-color (hsl 260 50 90),
                      :color :white,
                      :padding "2px 8px",
                      :display :inline-block,
                      :border-radius "6px"}))
                   (div
                    {:style {:padding 4}}
                    (or (cursor-> path comp-data states child)
                        (<> (str "Special:" (pr-str child))))))])]))
          (apply concat))))))

(defcomp
 comp-list
 (data states)
 (div
  {:style ui/row}
  (div {:style {:padding 4}} (<> "()" {}))
  (list->
   {:style {:border-left (str "1px solid " (hsl 40 170 90)), :padding 4}}
   (->> data
        (map-indexed (fn [idx child] [idx (div {} (cursor-> idx comp-data states child))]))))))

(defcomp
 comp-data
 (states data)
 (cond
   (map? data) (comp-map states data)
   (vector? data) (comp-vector states data)
   (set? data) (comp-set states data)
   (list? data) (comp-list states data)
   (string? data) (<> (pr-str data) {:color (hsl 120 80 50)})
   (number? data) (<> (pr-str data) {:color :blue})
   (keyword? data) (<> (pr-str data) {:color (hsl 240 80 76)})
   (nil? data) (<> "nil" {:color :red})
   (symbol? data) (<> (pr-str data) {:color :red})
   (or (= true data) (= false data)) (<> (pr-str data) {:color :blue})
   :else (<> (pr-str data) {:color :red})))

(defcomp
 comp-edn-grid
 (states data)
 (div {:style {:line-height "1.4em", :font-family ui/font-code}} (comp-data states data)))
