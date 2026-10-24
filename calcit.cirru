
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-about $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-about ()
            div
              {} $ :style $ {} (:padding 8)
              <> "|EDN Grid is a tool for displaying deep data. Hosted on Github: "
              a
                {} (:href |https://github.com/Memkits/edn-grid) (:target |_blank)
                <> |Memkits/edn-grid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
            :features $ #{} :js-ffi
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ decode-map-as
                  .unwrap $ get reel :store
                  :: 'Map 'Tag 'Dynamic
                states $ decode-map-as
                  .unwrap $ get store :states
                  :: 'Map 'Dynamic 'Dynamic
                page $ decode-map-as
                  .unwrap $ get store :page
                  , 'Tag
                content $ decode-map-as
                  .unwrap $ get store :content
                  , 'String
                error $ .unwrap-or (get store :error) nil
                data $ .unwrap-or (get store :data) nil
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/row
                comp-sidebar page
                match page
                  :home $ comp-home content error
                  :grid $ div
                    {} $ :style $ {} (:padding 4) (:overflow :auto)
                    comp-edn-grid states data
                  :about $ comp-about
                  _ $ <> $ str "|unknown: " page
                comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home (content error)
            div
              {} $ :style $ .merge ui/flex ui/row
              textarea $ {} (:value content) (:placeholder |Content)
                :style $ .merge ui/textarea ui/flex $ {} (:width 640) (:resize :none) (:font-family ui/font-code) (:flex-shrink 0) (:line-height |1.4em)
                :on-input $ fn (e d!)
                  d! $ :: :content $ decode-map-as
                    .unwrap $ get
                      decode-map-as e $ :: 'Map 'Tag 'Dynamic
                      , :value
                    , 'String
              div
                {} $ :style $ {} (:padding 8)
                div ({})
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!)
                        match (try-parse-cirru-edn content)
                          (:ok data)
                            d! $ :: :data data
                          (:err message)
                            d! $ :: :error message
                    <> "|Parse EDN"
                  =< 8 nil
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!)
                        match (try-parse-json content)
                          (:ok data)
                            d! $ :: :data data
                          (:err message)
                            d! $ :: :error message
                    <> "|Parse JSON"
                if (string? error)
                  <> error $ {} $ :color :red
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'Dynamic
            :features $ #{} :js-ffi
        'comp-sidebar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sidebar (page)
            div
              {} $ :style $ {}
                :background-color $ hsl 0 30 40
                :color :white
              render-icon :home :home page
              render-icon :grid :grid page
              render-icon :about :info page
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag
            :features $ #{} :js-ffi
        'render-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-icon (page icon-name current-page)
            div
              {}
                :style $ if (= page current-page) (assoc style-entry :color :white) style-entry
                :on-click $ fn (e d!)
                  d! $ :: :page page
              comp-i icon-name 14 $ hsl 400 80 80
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'Tag 'Tag 'Tag
            :features $ #{} :js-ffi
        'style-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-entry
            .merge ui/center $ {} (:font-size 32) (:height 48) (:width 40) (:cursor :pointer)
              :color $ hsl 0 0 70
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span a
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            feather.core :refer $ comp-i
            app.comp.edn-grid :refer $ comp-edn-grid
    'app.comp.edn-grid $ %{} 'FileEntry
      :defs $ {}
        'comp-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-data (states data)
            cond
                map? data
                comp-map states data
              (set? data) (comp-set states data)
              (list? data) (comp-list states data)
              (string? data)
                <> (to-lispy-string data)
                  {}
                    :color $ hsl 130 80 40
                    :margin "|0 8px"
              (number? data)
                <> (str data)
                  {} (:color :blue) (:margin "|0 8px")
              (tag? data)
                <> (str data)
                  {}
                    :color $ hsl 240 80 76
                    :margin "|0 8px"
              (nil? data)
                <> |nil $ {} (:color :red) (:margin "|0 8px")
              (symbol? data)
                <> (str data)
                  {} (:color :red) (:margin "|0 8px")
              (or (= true data) (= false data))
                <> (str data)
                  {} $ :color :blue
              true $ <> (to-lispy-string data)
                {} $ :color :red
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
        'comp-edn-grid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-edn-grid (states data)
            div
              {} $ :style $ {} (:line-height |18px) (:font-family ui/font-code) (:font-size 12)
              comp-data (>> states :root) data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
        'comp-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-list (states data)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ decode-map-as
                  .unwrap-or (get states :data) false
                  , 'Bool
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "|2px 4px") (:cursor :pointer)
                  :on-click $ fn (e d!)
                    d! $ :: :states cursor $ not state
                  :inner-text "|()"
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        d! $ :: :states cursor $ not state
                    <> |folded
                  list->
                    {} $ :style $ {}
                      :border-left $ str "|1px solid " $ hsl 40 170 90
                      :padding "|2px 4px"
                    -> data $ map-indexed $ fn (idx child)
                      [] idx $ div ({})
                        comp-data (>> states idx) child
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'List 'Dynamic)
            :features $ #{} :js-ffi
        'comp-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-map (states data)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ decode-map-as
                  .unwrap-or (get states :data) false
                  , 'Bool
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "|2px 4px") (:cursor :pointer)
                  :on-click $ fn (e d!)
                    d! $ :: :states cursor $ not state
                  :inner-text |{}
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        d! $ :: :states cursor $ not state
                    <> |folded
                  list->
                    {} $ :style $ {} (:display :grid) (:grid-template-columns "|1fr 100fr") (:grid-gap |0px)
                      :border-left $ str "|1px solid " $ hsl 200 80 80
                    .foldl
                      -> data (.to-list)
                        map $ fn (pair)
                          let[] (k child) pair $ []
                            [] k $ div
                              {} $ :style $ {} (:padding "|2px 4px") (:white-space :nowrap)
                              comp-data (>> states k) k
                            let
                                path $ str k |-value
                              [] path $ div
                                {} $ :style $ {} (:padding "|2px 4px")
                                or
                                  comp-data (>> states path) child
                                  <> $ str |Special: $ to-lispy-string child
                      []
                      fn (acc pair)
                        hint-fn $ {}
                          :args $ []
                            :: 'List $ :: 'List 'Dynamic
                            :: 'List $ :: 'List 'Dynamic
                          :return $ :: 'List $ :: 'List 'Dynamic
                        .concat acc pair
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'Map 'Dynamic 'Dynamic)
            :features $ #{} :js-ffi
        'comp-set $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-set (states data)
            div
              {} $ :style ui/row
              div $ {}
                :style $ {} $ :padding "|2px 4px"
                :inner-text |#{}
              list->
                {} $ :style $ {}
                  :border-left $ str "|1px solid " $ hsl 0 170 90
                  :padding "|2px 4px"
                -> data (.to-list)
                  map-indexed $ fn (idx child)
                    [] idx $ div ({})
                      comp-data (>> states idx) child
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'Set 'Dynamic)
            :features $ #{} :js-ffi
        'comp-vector $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-vector (states data)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ decode-map-as
                  .unwrap-or (get states :data) false
                  , 'Bool
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "|2px 4px") (:cursor :pointer)
                  :inner-text |[]
                  :on-click $ fn (e d!)
                    d! $ :: :states cursor $ not state
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        d! $ :: :states cursor $ not state
                    <> |folded
                  list->
                    {} $ :style $ {}
                      :border-left $ str "|1px solid " $ hsl 0 60 90
                      :padding "|2px 4px"
                    -> data $ map-indexed $ fn (idx child)
                      [] idx $ comp-data (>> states idx) child
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'List 'Dynamic)
            :features $ #{} :js-ffi
        'style-folded $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-folded
            {}
              :background-color $ hsl 260 80 70
              :color :white
              :padding "|0px 6px"
              :display :inline-block
              :line-height |20px
              :height |20px
              :border-radius |2px
              :cursor :pointer
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.edn-grid
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> list-> <> div
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |https://cos-sh.tiye.me/Memkits/edn-grid/) (:title "|EDN Grid") (:icon |http://cdn.tiye.me/logo/memkits.png) (:storage-key |edn-grid)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *reel $ reel-updater app.updater/update-wire-store @*reel op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'dispatch-wire! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-wire! (op)
            if (enum? op) (dispatch! op) (raise |Expected-Enum-operation)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if dev? $ load-console-formatter!
            match (js-ffi.browser/storage-get |edn-grid)
              (:some raw)
                match (try-parse-cirru-edn raw)
                  (:ok parsed)
                    dispatch! $ :: :hydrate-storage $ decode-map-as parsed (:: 'Map 'Tag 'Dynamic)
                  (:err message)
                    raise $ str "|Cannot restore edn-grid; existing archive is kept: " message
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch-wire!
            js-ffi.browser/add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            println "|App started."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ respo.ffi.browser/query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js-ffi.browser/storage-set! |edn-grid $ format-cirru-edn $ decode-map-as
              .unwrap $ get @*reel :store
              :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!)
            reset! *reel $ decode-map-as (refresh-reel @*reel schema/store app.updater/update-wire-store) (:: 'Map 'Tag 'Dynamic)
            println "|Code updated."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch-wire!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :refer $ dev?
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def config
            {} $ :storage |edn-grid
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {}
              :states $ {}
              :content |
              :data nil
              :error nil
              :page :home
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'update-wire-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-wire-store (store op op-id op-time)
            if (enum? op)
              updater
                decode-map-as store $ :: 'Map 'Tag 'Dynamic
                , op (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
              raise |Expected-Enum-operation
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                decode-map-as
                  update-states store
                    decode-map-as cursor $ :: 'List 'Dynamic
                    , s
                  :: 'Map 'Tag 'Dynamic
              (:content t)
                assoc store :content $ decode-map-as t 'String
              (:data d)
                -> store (assoc :data d) (assoc :error nil) (assoc :page :grid)
              (:error e)
                assoc store :error $ decode-map-as e 'String
              (:page p)
                assoc store :page $ decode-map-as p 'Tag
              (:hydrate-storage d)
                decode-map-as d $ :: 'Map 'Tag 'Dynamic
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Enum 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |content-update)
              :code $ quote $ assert= |hello
                decode-map-as
                  .unwrap $ get
                    updater app.schema/store (:: :content |hello) |id 0
                    , :content
                  , 'String
              :tags $ #{} :unit
            %{} 'TestEntry (:name |data-navigation)
              :code $ quote $ assert= :grid
                decode-map-as
                  .unwrap $ get
                    updater app.schema/store
                      :: :data $ [] 1 2
                      , |id 0
                    , :page
                  , 'Tag
              :tags $ #{} :unit
            %{} 'TestEntry (:name |error-update)
              :code $ quote $ assert= |invalid
                decode-map-as
                  .unwrap $ get
                    updater app.schema/store (:: :error |invalid) |id 0
                    , :error
                  , 'String
              :tags $ #{} :unit
            %{} 'TestEntry (:name |page-navigation)
              :code $ quote $ assert= :about
                decode-map-as
                  .unwrap $ get
                    updater app.schema/store (:: :page :about) |id 0
                    , :page
                  , 'Tag
              :tags $ #{} :unit
            %{} 'TestEntry (:name |storage-hydration)
              :code $ quote $ assert= |saved
                decode-map-as
                  .unwrap $ get
                    updater app.schema/store
                      :: :hydrate-storage $ assoc app.schema/store :content |saved
                      , |id 0
                    , :content
                  , 'String
              :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
