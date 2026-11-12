
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
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
          :schema $ quote $ Fn (-> respo.schema/Component) (:features :js-ffi)
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control!)
            let
                store $ :store reel
                states store.:states
                page store.:page
                content store.:content
                error store.:error
                data store.:data
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/row
                comp-sidebar page
                match page
                  :home $ comp-home content error
                  :grid $ div
                    {} $ :style $ {} (:padding 4) (:overflow :auto)
                    match data
                      (:some value) (comp-edn-grid states value)
                      (:none) (comp-edn-grid states nil)
                  :about $ comp-about
                  _ $ <> $ str "|unknown: " page
                comp-typed-reel (>> states :reel) reel ({}) on-control!
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home (content error)
            div
              {} $ :style $ .merge ui/flex ui/row
              textarea $ {} (:value content) (:placeholder |Content)
                :style $ .merge ui/textarea ui/flex $ {} (:width 640) (:resize :none) (:font-family ui/font-code) (:flex-shrink 0) (:line-height |1.4em)
                :on-input $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn app.schema/Op $ -> Unit
                    -> Unit
                  d! $ app.schema/Op :content $ decode-map-as (:value e) 'String
              div
                {} $ :style $ {} (:padding 8)
                div ({})
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/Op $ -> Unit
                          -> Unit
                        match (try-parse-cirru-edn content)
                          (:ok data)
                            d! $ app.schema/Op :data data
                          (:err message)
                            d! $ app.schema/Op :error message
                    <> "|Parse EDN"
                  space-x 8
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/Op $ -> Unit
                          -> Unit
                        match (try-parse-json content)
                          (:ok data)
                            d! $ app.schema/Op :data data
                          (:err message)
                            d! $ app.schema/Op :error message
                    <> "|Parse JSON"
                .map error $ fn (message)
                  <> message $ {} $ :color :red
          :examples $ []
          :schema $ quote $ Fn String (Option String) (-> respo.schema/Component) (:features :js-ffi)
        'comp-sidebar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sidebar (page)
            div
              {} $ :style $ {}
                :background-color $ hsl 0 30 40
                :color :white
              render-icon (app.schema/Page :home) :home page
              render-icon (app.schema/Page :grid) :grid page
              render-icon (app.schema/Page :about) :info page
          :examples $ []
          :schema $ quote $ Fn Tag (-> respo.schema/Component) (:features :js-ffi)
        'render-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-icon (page icon-name current-page)
            div
              {}
                :style $ if
                  = (app.schema/page-tag page) current-page
                  assoc style-entry :color :white
                  , style-entry
                :on-click $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn app.schema/Op $ -> Unit
                    -> Unit
                  d! $ app.schema/Op :page page
              comp-i icon-name 14 $ hsl 400 80 80
          :examples $ []
          :schema $ quote $ Fn app.schema/Page Tag Tag (-> respo.schema/Element) (:features :js-ffi)
        'style-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-entry
            .merge ui/center $ {} (:font-size 32) (:height 48) (:width 40) (:cursor :pointer)
              :color $ hsl 0 0 70
          :examples $ []
          :schema $ quote $ Map Tag respo-ui.schema/StyleValue
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span a
            respo.comp.space :refer $ space-x
            reel.comp.reel :refer $ comp-typed-reel
            feather.core :refer $ comp-i
            app.comp.edn-grid :refer $ comp-edn-grid
    'app.comp.edn-grid $ %{} 'FileEntry
      :defs $ {}
        'Scalar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion Scalar String Number Tag Symbol Bool
          :examples $ []
          :schema $ quote UnionDef
        'comp-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-data (states data)
            cond
                map? data
                comp-map states data
              (set? data) (comp-set states data)
              (list? data) (comp-list states data)
              (nil? data)
                <> |nil $ {} (:color :red) (:margin "|0 8px")
              (or (string? data) (number? data) (tag? data) (symbol? data) (bool? data))
                match (decode-map-as data app.comp.edn-grid/Scalar)
                  (String data)
                    <> (to-lispy-string data)
                      {}
                        :color $ hsl 130 80 40
                        :margin "|0 8px"
                  (Number data)
                    <> (str data)
                      {} (:color :blue) (:margin "|0 8px")
                  (Tag data)
                    <> (str data)
                      {}
                        :color $ hsl 240 80 76
                        :margin "|0 8px"
                  (Symbol data)
                    <> (str data)
                      {} (:color :red) (:margin "|0 8px")
                  (Bool data)
                    <> (str data)
                      {} $ :color :blue
              true $ <> (to-lispy-string data)
                {} $ :color :red
          :examples $ []
          :schema $ quote $ Fn respo.schema/States Value (-> respo.schema/Component) (:generics Value) (:features :js-ffi)
        'comp-edn-grid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-edn-grid (states data)
            div
              {} $ :style $ {} (:line-height |18px) (:font-family ui/font-code) (:font-size 12)
              comp-data (>> states :root) data
          :examples $ []
          :schema $ quote $ Fn respo.schema/States Value (-> respo.schema/Component) (:generics Value) (:features :js-ffi)
        'comp-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-list (states data)
            let
                cursor $ decode-map-as
                  .unwrap-or (&map:get states :cursor) ([])
                  List Dynamic
                state $ decode-map-as
                  .unwrap-or (&map:get states :data) false
                  , 'Bool
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "|2px 4px") (:cursor :pointer)
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    d! $ app.schema/Op :states cursor $ not state
                  :inner-text "|()"
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/Op $ -> Unit
                          -> Unit
                        d! $ app.schema/Op :states cursor $ not state
                    <> |folded
                  respo.core/keyed->
                    {} $ :style $ {}
                      :border-left $ str "|1px solid " $ hsl 40 170 90
                      :padding "|2px 4px"
                    map-indexed data $ fn (idx child)
                      respo.core/keyed-element idx $ div ({})
                        comp-data (>> states idx) child
          :examples $ []
          :schema $ quote $ Fn respo.schema/States (List Item) (-> respo.schema/Component) (:generics Item) (:features :js-ffi)
        'comp-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-map (states data)
            let
                cursor $ decode-map-as
                  .unwrap-or (&map:get states :cursor) ([])
                  List Dynamic
                state $ decode-map-as
                  .unwrap-or (&map:get states :data) false
                  , 'Bool
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "|2px 4px") (:cursor :pointer)
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    d! $ app.schema/Op :states cursor $ not state
                  :inner-text |{}
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/Op $ -> Unit
                          -> Unit
                        d! $ app.schema/Op :states cursor $ not state
                    <> |folded
                  data-list->
                    {} $ :style $ {} (:display :grid) (:grid-template-columns "|1fr 100fr") (:grid-gap |0px)
                      :border-left $ str "|1px solid " $ hsl 200 80 80
                    .foldl
                      -> data (.to-list)
                        map $ fn (pair)
                          let[] (k child) pair $ []
                            assert-type
                              [] k $ div
                                {} $ :style $ {} (:padding "|2px 4px") (:white-space :nowrap)
                                comp-data (data-states states k) k
                              Tuple Dynamic respo.schema/Element
                            let
                                path $ str k |-value
                              assert-type
                                [] path $ div
                                  {} $ :style $ {} (:padding "|2px 4px")
                                  or
                                    comp-data (>> states path) child
                                    <> $ str |Special: $ to-lispy-string child
                                Tuple Dynamic respo.schema/Element
                      assert-type ([])
                        List $ Tuple Dynamic respo.schema/Element
                      fn (acc pair)
                        hint-fn $ Fn
                          List $ Tuple Dynamic respo.schema/Element
                          List $ Tuple Dynamic respo.schema/Element
                          -> $ List $ Tuple Dynamic respo.schema/Element
                        .concat acc pair
          :examples $ []
          :schema $ quote $ Fn respo.schema/States (Map K V) (-> respo.schema/Component) (:generics K V) (:features :js-ffi)
        'comp-set $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-set (states data)
            div
              {} $ :style ui/row
              div $ {}
                :style $ {} $ :padding "|2px 4px"
                :inner-text |#{}
              respo.core/keyed->
                {} $ :style $ {}
                  :border-left $ str "|1px solid " $ hsl 0 170 90
                  :padding "|2px 4px"
                map-indexed (.to-list data)
                  fn (idx child)
                    respo.core/keyed-element idx $ div ({})
                      comp-data (>> states idx) child
          :examples $ []
          :schema $ quote $ Fn respo.schema/States (Set Item) (-> respo.schema/Component) (:generics Item) (:features :js-ffi)
        'comp-vector $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-vector (states data)
            let
                cursor $ decode-map-as
                  .unwrap-or (&map:get states :cursor) ([])
                  List Dynamic
                state $ decode-map-as
                  .unwrap-or (&map:get states :data) false
                  , 'Bool
              div
                {} $ :style ui/row
                div $ {}
                  :style $ {} (:padding "|2px 4px") (:cursor :pointer)
                  :inner-text |[]
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    d! $ app.schema/Op :states cursor $ not state
                if state
                  div
                    {} (:style style-folded)
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/Op $ -> Unit
                          -> Unit
                        d! $ app.schema/Op :states cursor $ not state
                    <> |folded
                  respo.core/keyed->
                    {} $ :style $ {}
                      :border-left $ str "|1px solid " $ hsl 0 60 90
                      :padding "|2px 4px"
                    map-indexed data $ fn (idx child)
                      respo.core/keyed-component idx $ comp-data (>> states idx) child
          :examples $ []
          :schema $ quote $ Fn respo.schema/States (List Item) (-> respo.schema/Component) (:generics Item) (:features :js-ffi)
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
          :schema $ quote $ Map Tag respo.schema/CssValue
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.edn-grid
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> list-> <> div data-states data-list->
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |https://cos-sh.tiye.me/Memkits/edn-grid/) (:title "|EDN Grid") (:icon |http://cdn.tiye.me/logo/memkits.png) (:storage-key |edn-grid)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            reel.typed/State :base schema/store :store schema/store :records ([]) :pointer None :stopped? false :display? false :merged? false
          :examples $ []
          :schema $ quote $ Ref (reel.typed/State schema/Op schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *reel $ match op
              (reel.typed/Control control) (reel.typed/apply-control app.updater/updater @*reel control)
              (app.schema/Op action)
                reel.typed/record-op app.updater/updater @*reel action (generate-id!) (js-ffi.shared/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/ResolvedOp (-> Unit) (:features :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if dev? $ load-console-formatter!
            match (js-ffi.browser/storage-get |edn-grid)
              (:some raw)
                match (try-parse-cirru-edn raw)
                  (:ok parsed)
                    dispatch! $ app.schema/Op :hydrate-storage $ schema/decode-store parsed
                  (:err message)
                    raise $ str "|Cannot restore edn-grid; existing archive is kept: " message
              (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (r p) (render-app!)
            listen-devtools-toggle! |a $ fn () $ on-control! (reel.typed/Control :toggle)
            js-ffi.browser/add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            println "|App started."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ respo.ffi.browser/query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch! control)
          :examples $ []
          :schema $ quote $ Fn reel.typed/Control (-> Unit) (:features :state)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js-ffi.browser/storage-set! |edn-grid $ format-cirru-edn $ schema/encode-store (:store @*reel)
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!)
            reset! *reel $ reel.typed/refresh app.updater/updater @*reel schema/store
            println "|Code updated."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              fn (op)
                hint-fn $ Fn schema/Op $ -> Unit
                dispatch! op
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container
            app.schema :as schema
            reel.util :refer $ listen-devtools-toggle!
            app.config :refer $ dev?
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List Dynamic) Bool
            :content String
            :data Dynamic
            :error String
            :page app.schema/Page
            :hydrate-storage app.schema/Store
          :examples $ []
          :schema $ quote EnumDef
        'Page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Page (:home) (:grid) (:about)
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp app.schema/Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Dynamic Dynamic
            :content String
            :data $ Option Dynamic
            :error $ Option String
            :page Tag
          :examples $ []
          :schema $ quote StructDef
        'config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def config
            {} $ :storage |edn-grid
          :examples $ []
          :schema $ quote $ Map Tag String
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (raw)
            let
                archive $ decode-map-as raw $ Map Tag Dynamic
                states $ decode-map-as
                  .unwrap $ &map:get archive :states
                  Map Dynamic Dynamic
                content $ decode-map-as
                  .unwrap $ &map:get archive :content
                  , 'String
                data $ &map:get archive :data
                error $ .and-then (&map:get archive :error)
                  fn (message)
                    if (string? message) (Some message) None
                page $ decode-map-as
                  .unwrap $ &map:get archive :page
                  , 'Tag
              Store :states states :content content :data data :error error :page page
          :examples $ []
          :schema $ quote $ Fn Input (-> Store) (:generics Input)
        'encode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn encode-store (store)
            let
                archive $ {} (:states store.:states) (:content store.:content) (:data nil) (:error nil) (:page store.:page)
                with-data $ match store.:data
                  (:some value) (assoc archive :data value)
                  (:none) archive
              match store.:error
                (:some message) (assoc with-data :error message)
                (:none) with-data
          :examples $ []
          :schema $ quote $ Fn Store
            -> $ Map Tag Dynamic
        'page-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn page-tag (page)
            match page
              (:home) :home
              (:grid) :grid
              (:about) :about
          :examples $ []
          :schema $ quote $ Fn Page (-> Tag)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :content | :data None :error None :page :home
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assoc store :states $ decode-map-as (respo.cursor/update-state-tree store.:states cursor s) (Map Dynamic Dynamic)
              (:content t) (assoc store :content t)
              (:data d)
                -> store
                  assoc :data $ Some d
                  assoc :error None
                  assoc :page :grid
              (:error e)
                assoc store :error $ Some e
              (:page p)
                assoc store :page $ app.schema/page-tag p
              (:hydrate-storage d) d
              _ store
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
          :tests $ []
            %{} 'TestEntry (:name |content-update)
              :code $ quote $ assert= |hello
                :content $ updater app.schema/store (app.schema/Op :content |hello) |id 0
              :tags $ #{} :unit
            %{} 'TestEntry (:name |data-navigation)
              :code $ quote $ assert= :grid
                :page $ updater app.schema/store
                  app.schema/Op :data $ [] 1 2
                  , |id 0
              :tags $ #{} :unit
            %{} 'TestEntry (:name |error-update)
              :code $ quote $ assert= (Some |invalid)
                :error $ updater app.schema/store (app.schema/Op :error |invalid) |id 0
              :tags $ #{} :unit
            %{} 'TestEntry (:name |page-navigation)
              :code $ quote $ assert= :about
                :page $ updater app.schema/store
                  app.schema/Op :page $ app.schema/Page :about
                  , |id 0
              :tags $ #{} :unit
            %{} 'TestEntry (:name |fold-state-roundtrip)
              :code $ quote $ let
                  cursor $ [] :root false
                  folded $ updater app.schema/store (app.schema/Op :states cursor true) |fold 0
                  restored $ app.schema/decode-store $ app.schema/encode-store folded
                assert= (Some true)
                  respo.cursor/get-state-at restored.:states $ [] :root false :data
              :tags $ #{} :unit
            %{} 'TestEntry (:name |storage-hydration)
              :code $ quote $ let
                  saved $ {}
                    :states $ {}
                    :content |saved
                    :data $ [] 1 2
                    :error nil
                    :page :grid
                  restored $ updater app.schema/store
                    app.schema/Op :hydrate-storage $ app.schema/decode-store saved
                    , |id 0
                assert= saved $ app.schema/encode-store restored
              :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
