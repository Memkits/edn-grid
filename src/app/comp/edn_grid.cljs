
(ns app.comp.edn-grid
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [respo-md.comp.md :refer [comp-md]]
            [respo-ui.comp.icon :refer [comp-icon]]
            [respo.comp.inspect :refer [comp-inspect]]))

(defcomp comp-edn-grid (data) (<> data))
