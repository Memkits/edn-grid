
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [respo-ui.comp.icon :refer [comp-icon]]
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
   (button
    {:style ui/button,
     :on-click (fn [e d! m!]
       (try
        (let [data (read-string content)] (d! :data data))
        (catch js/Error err (.log js/console err) (d! :error (str err)))))}
    (<> "Parse"))
   (=< 8 nil)
   (if (some? error) (<> error {:color :red})))))

(def style-entry (merge ui/center {:font-size 32, :height 48, :width 40, :cursor :pointer}))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/row)}
    (div
     {:style {:background-color (hsl 0 30 40), :color :white}}
     (div {:style style-entry, :on-click (action-> :page :home)} (comp-icon :home))
     (div {:style style-entry, :on-click (action-> :page :grid)} (comp-icon :grid))
     (div {:style style-entry, :on-click (action-> :page :about)} (comp-icon :information)))
    (case (:page store)
      :home (comp-home (:content store) (:error store))
      :grid (div {:style {:padding 4, :overflow :auto}} (comp-edn-grid (:data store)))
      :about (comp-about)
      (<> (str "unknown: " (:page store))))
    (comment comp-inspect "Store" store nil)
    (cursor-> :reel comp-reel states reel {}))))
