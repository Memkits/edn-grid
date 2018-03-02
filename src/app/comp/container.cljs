
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
            [app.comp.edn-grid :refer [comp-edn-grid]]))

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
     (div {:style style-entry, :on-click (action-> :page :grid)} (comp-icon :grid)))
    (div
     {}
     (case (:page store)
       :home
         (textarea
          {:value (:content store),
           :placeholder "Content",
           :style (merge ui/textarea {:width 640, :height 320}),
           :on-input (action-> :content (:value %e))})
       :grid (comp-edn-grid store)
       (<> (str "unknown: " (:page store)))))
    (comment comp-inspect "Store" store nil)
    (cursor-> :reel comp-reel states reel {}))))
