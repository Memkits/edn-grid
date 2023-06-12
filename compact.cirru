
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |comp-about $ quote
          defcomp comp-about () (println |pl)
            div
              {} $ :style
                {} $ :padding 8
              comp-md "|EDN Grid is a tool for displaying deep data. It's hosted on Github [Memkits/edn-grid](https://github.com/Memkits/edn-grid)."
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global ui/fullscreen ui/row)
                comp-sidebar $ :page store
                case-default (:page store)
                  <> $ str "|unknown: " (:page store)
                  :home $ comp-home (:content store) (:error store)
                  :grid $ div
                    {} $ :style
                      {} (:padding 4) (:overflow :auto)
                    comp-edn-grid states $ :data store
                  :about $ comp-about
                ; comp-inspect |Store store nil
                comp-reel (>> states :reel) reel $ {}
        |comp-home $ quote
          defcomp comp-home (content error)
            div
              {} $ :style (merge ui/flex ui/row)
              textarea $ {} (:value content) (:placeholder |Content)
                :style $ merge ui/textarea ui/flex
                  {} (:width 640) (:resize :none) (:font-family ui/font-code) (:flex-shrink 0) (:line-height |1.4em)
                :on-input $ fn (e d!)
                  d! :content $ :value e
              div
                {} $ :style
                  {} $ :padding 8
                div ({})
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!)
                        try
                          let
                              data $ parse-cirru-edn content
                            d! :data data
                          fn (err) (js/console.log err)
                            d! :error $ str err
                    <> "|Parse EDN"
                  =< 8 nil
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!)
                        try
                          let
                              data $ js/JSON.parse content
                            d! :data $ to-calcit-data data
                          fn (err) (js/console.log err)
                            d! :error $ str err
                    <> "|Parse JSON"
                if (some? error)
                  <> error $ {} (:color :red)
        |comp-sidebar $ quote
          defcomp comp-sidebar (page)
            div
              {} $ :style
                {}
                  :background-color $ hsl 0 30 40
                  :color :white
              render-icon :home :home page
              render-icon :grid :grid page
              render-icon :about :info page
        |render-icon $ quote
          defn render-icon (page icon-name current-page)
            div
              {}
                :style $ merge style-entry
                  if (= page current-page)
                    {} $ :color :white
                :on-click $ fn (e d!) (d! :page page)
              comp-i icon-name 14 $ hsl 400 80 80
        |style-entry $ quote
          def style-entry $ merge ui/center
            {} (:font-size 32) (:height 48) (:width 40) (:cursor :pointer)
              :color $ hsl 0 0 70
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] feather.core :refer $ [] comp-i
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] app.comp.edn-grid :refer $ [] comp-edn-grid
          [] respo.comp.space :refer $ [] =<
          [] cljs.reader :refer $ [] read-string
    |app.comp.edn-grid $ {}
      :defs $ {}
        |comp-data $ quote
          defcomp comp-data (states data)
            cond
                map? data
                comp-map states data
              (set? data) (comp-set states data)
              (list? data) (comp-list states data)
              (string? data)
                <> (pr-str data)
                  {}
                    :color $ hsl 130 80 40
                    :margin "\"0 8px"
              (number? data)
                <> (str data)
                  {} (:color :blue) (:margin "\"0 8px")
              (tag? data)
                <> (str data)
                  {}
                    :color $ hsl 240 80 76
                    :margin "\"0 8px"
              (nil? data)
                <> "\"nil" $ {} (:color :red) (:margin "\"0 8px")
              (symbol? data)
                <> (str data)
                  {} (:color :red) (:margin "\"0 8px")
              (or (= true data) (= false data))
                <> (str data)
                  {} $ :color :blue
              :else $ <> (pr-str data)
                {} $ :color :red
        |comp-edn-grid $ quote
          defcomp comp-edn-grid (states data)
            div
              {} $ :style
                {} (:line-height "\"18px") (:font-family ui/font-code) (:font-size 12)
              comp-data (>> states :root) data
        |comp-list $ quote
          defcomp comp-list (states data)
            let
                cursor $ :cursor states
                state $ or (:data states) false
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "\"2px 4px") (:cursor :pointer)
                  :on-click $ fn (e d!)
                    d! cursor $ not state
                  :inner-text "\"()"
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        d! cursor $ not state
                    <> "\"folded"
                  list->
                    {} $ :style
                      {}
                        :border-left $ str "|1px solid " (hsl 40 170 90)
                        :padding "\"2px 4px"
                    -> data $ map-indexed
                      fn (idx child)
                        [] idx $ div ({})
                          comp-data (>> states idx) child
        |comp-map $ quote
          defcomp comp-map (states data)
            let
                state $ or (:data states) false
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "\"2px 4px") (:cursor :pointer)
                  :on-click $ fn (e d! m!)
                    m! $ not state
                  :inner-text "\"{}"
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d! m!)
                        m! $ not state
                    <> "\"folded"
                  list->
                    {} $ :style
                      {} (:display :grid) (:grid-template-columns "|1fr 100fr") (:grid-gap |0px)
                        :border-left $ str "|1px solid " (hsl 200 80 80)
                    &list:concat & $ -> data (.to-list)
                      map $ fn (pair)
                        let[] (k child) pair $ []
                          [] k $ div
                            {} $ :style
                              {} (:padding "\"2px 4px") (:white-space :nowrap)
                            comp-data (>> states k) k
                          let
                              path $ str k |-value
                            [] path $ div
                              {} $ :style
                                {} $ :padding "\"2px 4px"
                              or
                                comp-data (>> states path) child
                                <> $ str |Special: (pr-str child)
        |comp-set $ quote
          defcomp comp-set (states data)
            div
              {} $ :style ui/row
              div $ {}
                :style $ {} (:padding "\"2px 4px")
                :inner-text "\"#{}"
              list->
                {} $ :style
                  {}
                    :border-left $ str "|1px solid " (hsl 0 170 90)
                    :padding "\"2px 4px"
                -> data (.to-list)
                  map-indexed $ fn (idx child)
                    [] idx $ div ({})
                      comp-data (>> states idx) child
        |comp-vector $ quote
          defcomp comp-vector (states data)
            let
                cursor $ :cursor states
                state $ or (:data states) false
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "\"2px 4px") (:cursor :pointer)
                  :inner-text "\"[]"
                  :on-click $ fn (e d!)
                    d! cursor $ not state
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        d! cursor $ not state
                    <> "\"folded"
                  list->
                    {} $ :style
                      {}
                        :border-left $ str "|1px solid " (hsl 0 60 90)
                        :padding "\"2px 4px"
                    -> data $ map-indexed
                      fn (idx child)
                        [] idx $ comp-data (>> states idx) child
        |style-folded $ quote
          def style-folded $ {}
            :background-color $ hsl 260 80 70
            :color :white
            :padding "|0px 6px"
            :display :inline-block
            :line-height "\"20px"
            :height "\"20px"
            :border-radius |2px
            :cursor :pointer
      :ns $ quote
        ns app.comp.edn-grid $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> list-> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] respo-md.comp.md :refer $ [] comp-md
          [] respo.comp.inspect :refer $ [] comp-inspect
    |app.config $ {}
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"dev" "\"release")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/edn-grid/") (:title "\"EDN Grid") (:icon "\"http://cdn.tiye.me/logo/memkits.png") (:storage-key "\"edn-grid")
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data) (; println |Dispatch: op)
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! ()
            if dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload $ fn (e)
              .setItem js/localStorage (:storage schema/config)
                format-cirru-edn $ :store @*reel
            let
                raw $ .getItem js/localStorage (:storage schema/config)
              if (some? raw)
                do $ dispatch! :hydrate-storage (parse-cirru-edn raw)
            println "|App started."
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |reload! $ quote
          defn reload! () (clear-cache!)
            reset! *reel $ refresh-reel @*reel schema/store updater
            println "|Code updated."
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] cljs.reader :refer $ [] read-string
          app.config :refer $ dev?
    |app.schema $ {}
      :defs $ {}
        |config $ quote
          def config $ {} (:storage |edn-grid)
        |store $ quote
          def store $ {}
            :states $ {}
            :content |
            :data nil
            :error nil
            :page :home
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :content $ assoc store :content op-data
              :data $ -> store (assoc :data op-data) (assoc :error nil) (assoc :page :grid)
              :error $ assoc store :error op-data
              :page $ assoc store :page op-data
              :hydrate-storage op-data
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
