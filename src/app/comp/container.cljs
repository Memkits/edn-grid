
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [feather.core :refer [comp-i]]
            [respo.comp.inspect :refer [comp-inspect]]
            [app.comp.edn-grid :refer [comp-edn-grid]]
            [respo.comp.space :refer [=<]]
            [cljs.reader :refer [read-string]]))

(defcomp
 comp-about
 ()
 (println "pl")
 (div
  {:style {:padding 8}}
  (comp-md
   "EDN Grid is a tool for displaying deep data. It's hosted on Github [Memkits/edn-grid](https://github.com/Memkits/edn-grid).")))

(defcomp
 comp-home
 (content error)
 (div
  {:style (merge ui/flex ui/row)}
  (textarea
   {:value content,
    :placeholder "Content",
    :style (merge
            ui/textarea
            ui/flex
            {:width 640,
             :resize :none,
             :font-family ui/font-code,
             :flex-shrink 0,
             :line-height "1.4em"}),
    :on-input (action-> :content (:value %e))})
  (div
   {:style {:padding 8}}
   (div
    {}
    (button
     {:style ui/button,
      :on-click (fn [e d! m!]
        (try
         (let [data (read-string content)] (d! :data data))
         (catch js/Error err (.log js/console err) (d! :error (str err)))))}
     (<> "Parse EDN"))
    (=< 8 nil)
    (button
     {:style ui/button,
      :on-click (fn [e d! m!]
        (try
         (let [data (.parse js/JSON content)] (d! :data (js->clj data)))
         (catch js/Error err (.log js/console err) (d! :error (str err)))))}
     (<> "Parse JSON")))
   (if (some? error) (<> error {:color :red})))))

(def style-entry
  (merge
   ui/center
   {:font-size 32, :height 48, :width 40, :cursor :pointer, :color (hsl 0 0 70)}))

(defn render-icon [page icon-name current-page]
  (div
   {:style (merge style-entry (if (= page current-page) {:color :white})),
    :on-click (action-> :page page)}
   (comp-i icon-name 14 (hsl 400 80 80))))

(defcomp
 comp-sidebar
 (page)
 (div
  {:style {:background-color (hsl 0 30 40), :color :white}}
  (render-icon :home :home page)
  (render-icon :grid :grid page)
  (render-icon :about :info page)))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/row)}
    (comp-sidebar (:page store))
    (case (:page store)
      :home (comp-home (:content store) (:error store))
      :grid
        (div {:style {:padding 4, :overflow :auto}} (comp-edn-grid states (:data store)))
      :about (comp-about)
      (<> (str "unknown: " (:page store))))
    (comment comp-inspect "Store" store nil)
    (cursor-> :reel comp-reel states reel {}))))
