
(ns app.updater (:require [respo.cursor :refer [mutate]]))

(defn updater [store op op-data op-id op-time]
  (case op
    :states (update store :states (mutate op-data))
    :content (assoc store :content op-data)
    :data (-> store (assoc :data op-data) (assoc :error nil) (assoc :page :grid))
    :error (assoc store :error op-data)
    :page (assoc store :page op-data)
    :hydrate-storage op-data
    store))
