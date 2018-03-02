
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

(declare render-data)

(declare comp-map)

(declare comp-vector)

(declare comp-set)

(declare comp-list)

(defn render-data [data]
  (cond
    (map? data) (comp-map data)
    (vector? data) (comp-vector data)
    (set? data) (comp-set data)
    (list? data) (comp-list data)
    (string? data) (<> (pr-str data) {:color (hsl 120 80 50)})
    (number? data) (<> (pr-str data) {:color :blue})
    (keyword? data) (<> (pr-str data) {:color (hsl 240 80 76)})
    (nil? data) (<> "nil" {:color :red})
    (symbol? data) (<> (pr-str data) {:color :red})
    (or (= true data) (= false data)) (<> (pr-str data) {:color :blue})
    :else (<> (pr-str data) {:color :red})))

(defcomp
 comp-vector
 (data)
 (div
  {:style ui/row}
  (div {:style {:padding 4}} (<> "[]" {:font-family ui/font-code}))
  (list->
   {:style {:border-left (str "1px solid " (hsl 0 60 90)), :padding 4}}
   (->> data (map-indexed (fn [idx child] [idx (div {} (render-data child))]))))))

(defcomp
 comp-set
 (data)
 (div
  {:style ui/row}
  (div {:style {:padding 4}} (<> "#{}" {:font-family ui/font-code}))
  (list->
   {:style {:border-left (str "1px solid " (hsl 0 170 90)), :padding 4}}
   (->> data (map-indexed (fn [idx child] [idx (div {} (render-data child))]))))))

(defcomp
 comp-map
 (data)
 (div
  {:style ui/row}
  (div {:style {:padding 4}} (<> "{}" {:font-family ui/font-code}))
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
              {:style {:padding 4, :white-space :nowrap, :font-family ui/font-code}}
              (render-data k))]
            [(str k "-value")
             (div
              {:style {:padding 4}}
              (or (render-data child) (<> (str "Special:" (pr-str child)))))]]))
        (apply concat)))))

(defcomp
 comp-list
 (data)
 (div
  {:style ui/row}
  (div {:style {:padding 4}} (<> "()" {:font-family ui/font-code}))
  (list->
   {:style {:border-left (str "1px solid " (hsl 40 170 90)), :padding 4}}
   (->> data (map-indexed (fn [idx child] [idx (div {} (render-data child))]))))))

(defcomp
 comp-edn-grid
 (data)
 (div {:style {:padding 8, :overflow :auto, :line-height "1.4em"}} (render-data data)))
