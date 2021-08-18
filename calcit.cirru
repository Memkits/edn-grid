
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |render-icon $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1520097215872) (:by |root) (:id |HkWQTP8u_f)
              |j $ {} (:text |render-icon) (:type :leaf) (:at 1520097210732) (:by |root) (:id |rkf76wIduf)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |page) (:type :leaf) (:at 1520097213958) (:by |root) (:id |ByraPI_OM)
                  |j $ {} (:text |icon-name) (:type :leaf) (:at 1520097235180) (:by |root) (:id |r1e_RvU_OG)
                  |r $ {} (:text |current-page) (:type :leaf) (:at 1520097287755) (:by |root) (:id |HJlnWdIdOf)
                :type :expr
                :at 1520097214168
                :by |root
                :id |ryxL6vLd_f
              |r $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1520097210732) (:by |root) (:id |BJ4QavIddf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520097210732) (:by |root) (:id |HJL7pwIuOG)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520097210732) (:by |root) (:id |HJumTDU__M)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1520097290869) (:by |root) (:id |r1fMdLOdM)
                              |T $ {} (:text |style-entry) (:type :leaf) (:at 1520097210732) (:by |root) (:id |HkFXpP8udf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1520097293074) (:by |root) (:id |rkVQM_UudG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1520097293528) (:by |root) (:id |S17BzdI__M)
                                      |j $ {} (:text |page) (:type :leaf) (:at 1520097294262) (:by |root) (:id |S1g8fOLuuz)
                                      |r $ {} (:text |current-page) (:type :leaf) (:at 1520097298287) (:by |root) (:id |SJrLG_Lu_G)
                                    :type :expr
                                    :at 1520097293369
                                    :by |root
                                    :id |rkNHM_Lddz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520097309895) (:by |root) (:id |H1xjfOIOOfleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:color) (:type :leaf) (:at 1520097311919) (:by |root) (:id |rkP7uUu_f)
                                          |j $ {} (:text |:white) (:type :leaf) (:at 1520097312873) (:by |root) (:id |BkEu7uI_uz)
                                        :type :expr
                                        :at 1520097311124
                                        :by |root
                                        :id |SJgvXuIuuf
                                    :type :expr
                                    :at 1520097299479
                                    :by |root
                                    :id |H1xjfOIOOf
                                :type :expr
                                :at 1520097291472
                                :by |root
                                :id |SyHQM_LOuf
                            :type :expr
                            :at 1520097289329
                            :by |root
                            :id |B1eWMuIu_G
                        :type :expr
                        :at 1520097210732
                        :by |root
                        :id |BJwX6PIuOz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1520097210732) (:by |root) (:id |H1s76PI_Oz)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |fn) (:type :leaf) (:at 1629278893887) (:by |rJG4IHzWf)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |e) (:type :leaf) (:at 1629278894373) (:by |rJG4IHzWf)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1629278895659) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629278894168
                                :by |rJG4IHzWf
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1629278891114) (:by |rJG4IHzWf) (:id |BJa7pDUd_G)
                                  |j $ {} (:text |:page) (:type :leaf) (:at 1520097340073) (:by |root) (:id |ByRmaDLduf)
                                  |r $ {} (:text |page) (:type :leaf) (:at 1520097342258) (:by |root) (:id |S1kxX6vUOdM)
                                :type :expr
                                :at 1520097210732
                                :by |root
                                :id |rJnmaDI_dM
                            :type :expr
                            :at 1629278893209
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1520097210732
                        :by |root
                        :id |rkcQTvL_dG
                    :type :expr
                    :at 1520097210732
                    :by |root
                    :id |HJrQTwUudM
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-i) (:type :leaf) (:at 1563124928540) (:by |root) (:id |SkbeX6DLOuM)
                      |j $ {} (:text |icon-name) (:type :leaf) (:at 1520097230759) (:by |root) (:id |SkzlQTvId_z)
                      |r $ {} (:text |14) (:type :leaf) (:at 1563124731791) (:by |root) (:id |ZnwkeTUI_)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |hsl) (:type :leaf) (:at 1563124736917) (:by |root) (:id |wpV5VuwVH)
                          |j $ {} (:text |400) (:type :leaf) (:at 1563124737788) (:by |root) (:id |ZfE7QkQbDZ)
                          |r $ {} (:text |80) (:type :leaf) (:at 1563124738126) (:by |root) (:id |vGyuL8D6Ns)
                          |v $ {} (:text |80) (:type :leaf) (:at 1563124738648) (:by |root) (:id |PnEC89_gnG)
                        :type :expr
                        :at 1563124736221
                        :by |root
                        :id |QWfHtIHNcL
                    :type :expr
                    :at 1520097210732
                    :by |root
                    :id |SkllX6P8O_G
                :type :expr
                :at 1520097210732
                :by |root
                :id |HkQ7aP8uuG
            :type :expr
            :at 1520097210732
            :by |root
            :id |BJgQTvU_dG
          |comp-sidebar $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520097039043) (:by |root) (:id |r1ZBMwId_M)
              |j $ {} (:text |comp-sidebar) (:type :leaf) (:at 1520097037044) (:by |root) (:id |HyMrGPIuuG)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |page) (:type :leaf) (:at 1520097272623) (:by |root) (:id |Hkl-_8_uM)
                :type :expr
                :at 1520097039865
                :by |root
                :id |rJgOzD8dOG
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |render-icon) (:type :leaf) (:at 1520097210732) (:by |root) (:id |S1meXTw8OOM)
                      |j $ {} (:text |:about) (:type :leaf) (:at 1520097358392) (:by |root) (:id |ryl00PIO_M)
                      |r $ {} (:text |:info) (:type :leaf) (:at 1563124966342) (:by |root) (:id |HyXMkuUddf)
                      |v $ {} (:text |page) (:type :leaf) (:at 1520097279160) (:by |root) (:id |SkGH-uIuuz)
                    :type :expr
                    :at 1520097237695
                    :by |root
                    :id |B191O8uOf
                  |T $ {} (:text |div) (:type :leaf) (:at 1520097037044) (:by |root) (:id |ByVrGwU_OM)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520097037044) (:by |root) (:id |SkLSMv8duM)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520097037044) (:by |root) (:id |S1OrMPIudM)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520097037044) (:by |root) (:id |rkcBfvU_uG)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:background-color) (:type :leaf) (:at 1520097037044) (:by |root) (:id |rJ3HzPL_dM)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1520097037044) (:by |root) (:id |SyABMD8udz)
                                      |j $ {} (:text |0) (:type :leaf) (:at 1520097037044) (:by |root) (:id |ryyxSGv8duM)
                                      |r $ {} (:text |30) (:type :leaf) (:at 1520097037044) (:by |root) (:id |HJgxSfDLu_M)
                                      |v $ {} (:text |40) (:type :leaf) (:at 1520097037044) (:by |root) (:id |SyWxHzwUOuG)
                                    :type :expr
                                    :at 1520097037044
                                    :by |root
                                    :id |ryarfwI__M
                                :type :expr
                                :at 1520097037044
                                :by |root
                                :id |rksBGDIO_G
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520097037044) (:by |root) (:id |r1XeSfwUu_f)
                                  |j $ {} (:text |:white) (:type :leaf) (:at 1520097037044) (:by |root) (:id |ryEeBzw8d_G)
                                :type :expr
                                :at 1520097037044
                                :by |root
                                :id |H1fxBfDUOOz
                            :type :expr
                            :at 1520097037044
                            :by |root
                            :id |rJFSGvUO_f
                        :type :expr
                        :at 1520097037044
                        :by |root
                        :id |r1DHMPUOuz
                    :type :expr
                    :at 1520097037044
                    :by |root
                    :id |HkHrGPUudG
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |render-icon) (:type :leaf) (:at 1520097210732) (:by |root) (:id |S1meXTw8OOM)
                      |j $ {} (:text |:home) (:type :leaf) (:at 1520097252529) (:by |root) (:id |ryl00PIO_M)
                      |r $ {} (:text |:home) (:type :leaf) (:at 1520097254082) (:by |root) (:id |HyXMkuUddf)
                      |v $ {} (:text |page) (:type :leaf) (:at 1520097275290) (:by |root) (:id |SkgXbOUdOM)
                    :type :expr
                    :at 1520097237695
                    :by |root
                    :id |SJCAwLuOG
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |render-icon) (:type :leaf) (:at 1520097210732) (:by |root) (:id |S1meXTw8OOM)
                      |j $ {} (:text |:grid) (:type :leaf) (:at 1520097258789) (:by |root) (:id |ryl00PIO_M)
                      |r $ {} (:text |:grid) (:type :leaf) (:at 1520097261008) (:by |root) (:id |HyXMkuUddf)
                      |v $ {} (:text |page) (:type :leaf) (:at 1520097276703) (:by |root) (:id |BJlE-uI_uz)
                    :type :expr
                    :at 1520097237695
                    :by |root
                    :id |r1YJ_IdOG
                :type :expr
                :at 1520097037044
                :by |root
                :id |r1XBzvU__f
            :type :expr
            :at 1520097037044
            :by |root
            :id |SygBfvUdOM
          |style-entry $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1519975890270) (:by |root) (:id |BJXYRTuLuf)
              |j $ {} (:text |style-entry) (:type :leaf) (:at 1519975889461) (:by |root) (:id |ByVY0pOL_f)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |merge) (:type :leaf) (:at 1519975912383) (:by |root) (:id |r1gxxAOIuG)
                  |L $ {} (:text |ui/center) (:type :leaf) (:at 1519975914211) (:by |root) (:id |BJLllAd8_z)
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1519975891329) (:by |root) (:id |rkgsAaOIdM)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1519975893208) (:by |root) (:id |S1VoCauIdf)
                          |j $ {} (:text |32) (:type :leaf) (:at 1519975902461) (:by |root) (:id |By8TRTu8uz)
                        :type :expr
                        :at 1519975891576
                        :by |root
                        :id |S12ApOLuM
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:height) (:type :leaf) (:at 1519975897158) (:by |root) (:id |ryXCCaO8_Gleaf)
                          |j $ {} (:text |48) (:type :leaf) (:at 1519975925344) (:by |root) (:id |HJBZy0dUdf)
                        :type :expr
                        :at 1519975894449
                        :by |root
                        :id |ryXCCaO8_G
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |:width) (:type :leaf) (:at 1519975907238) (:by |root) (:id |HycyA_Iufleaf)
                          |j $ {} (:text |40) (:type :leaf) (:at 1519975908125) (:by |root) (:id |B1bs10dIdz)
                        :type :expr
                        :at 1519975905589
                        :by |root
                        :id |HycyA_Iuf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1519975936926) (:by |root) (:id |HyL-C_L_zleaf)
                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1519975937903) (:by |root) (:id |BJXKZ0O8OM)
                        :type :expr
                        :at 1519975933571
                        :by |root
                        :id |HyL-C_L_z
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |:color) (:type :leaf) (:at 1520097319671) (:by |root) (:id |rJy4uU_dMleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |hsl) (:type :leaf) (:at 1520097321524) (:by |root) (:id |HyWgE_8_Of)
                              |j $ {} (:text |0) (:type :leaf) (:at 1520097321914) (:by |root) (:id |r1gf4_LuOM)
                              |r $ {} (:text |0) (:type :leaf) (:at 1520097322323) (:by |root) (:id |H1fGVuIO_z)
                              |v $ {} (:text |70) (:type :leaf) (:at 1520097324382) (:by |root) (:id |HJEMV_Iu_G)
                            :type :expr
                            :at 1520097320289
                            :by |root
                            :id |SJ4eE_LuuG
                        :type :expr
                        :at 1520097318703
                        :by |root
                        :id |rJy4uU_dM
                    :type :expr
                    :at 1519975889461
                    :by |root
                    :id |SJrt0aOIuG
                :type :expr
                :at 1519975911565
                :by |root
                :id |HJexC_Uuz
            :type :expr
            :at 1519975889461
            :by |root
            :id |S1GtC6_U_z
          |comp-container $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |Hy6-sOYqaSb)
              |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |HyC-jOFq6r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reel) (:time 1507461830530) (:type :leaf) (:id |r1gMj_KqTSZ)
                :time 1499755354983
                :type :expr
                :id |H1yfo_t9aB-
              |v $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |let) (:time 1507461833421) (:type :leaf) (:id |SkGx0cFPh-)
                  |L $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |store) (:time 1507461835738) (:type :leaf) (:id |SyMAqtD2W)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:store) (:time 1507461837276) (:type :leaf) (:id |r1GEC5Kv3Z)
                              |j $ {} (:author |root) (:text |reel) (:time 1507461838285) (:type :leaf) (:id |B1NBC5tPh-)
                            :time 1507461836110
                            :type :expr
                            :id |S1XN05tw3-
                        :time 1507461834650
                        :type :expr
                        :id |Hy7CcFP3W
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |states) (:time 1509727105928) (:type :leaf) (:id |rkgYtjzqAWleaf)
                          |j $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |:states) (:time 1509727107223) (:type :leaf) (:id |HJE9tjzqAb)
                              |j $ {} (:author |root) (:text |store) (:time 1509727108033) (:type :leaf) (:id |SySiYoMc0-)
                            :time 1509727106316
                            :type :expr
                            :id |HJBcYszqCZ
                        :time 1509727104820
                        :type :expr
                        :id |rkgYtjzqAW
                    :time 1507461834351
                    :type :expr
                    :id |SyeGC5tw3-
                  |T $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |B1zMoOFc6HZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bk4GoOt5aSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:author |root) (:text |:style) (:time 1499755354983) (:type :leaf) (:id |Bk8ModK9pHW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:author |root) (:text |merge) (:time 1499755354983) (:type :leaf) (:id |BydGiOKqpHW)
                                  |j $ {} (:author |root) (:text |ui/global) (:time 1499755354983) (:type :leaf) (:id |rktMsOY56HW)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1519975727020) (:by |root) (:id |Hkx4NadI_f)
                                  |r $ {} (:author |root) (:text |ui/row) (:time 1499755354983) (:type :leaf) (:id |H1qGodF96BW)
                                :time 1499755354983
                                :type :expr
                                :id |rJDfsutcaBb
                            :time 1499755354983
                            :type :expr
                            :id |BkBzj_F5TrW
                        :time 1499755354983
                        :type :expr
                        :id |Hy7Gj_YcaSb
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |comp-sidebar) (:type :leaf) (:at 1579107395371) (:by |rJG4IHzWf) (:id |HyHQHzPL__G)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:page) (:type :leaf) (:at 1520097182119) (:by |root) (:id |HybQiDIudf)
                              |j $ {} (:text |store) (:type :leaf) (:at 1520097183105) (:by |root) (:id |ByXLivLuOG)
                            :type :expr
                            :at 1520097179680
                            :by |root
                            :id |HyVov8OOG
                        :type :expr
                        :at 1520097043720
                        :by |root
                        :id |rk3GPUd_f
                      |s $ {}
                        :data $ {}
                          |D $ {} (:text |case-default) (:type :leaf) (:at 1629279186634) (:by |rJG4IHzWf) (:id |S1ER3uI_f)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |:page) (:type :leaf) (:at 1519975630268) (:by |root) (:id |rJQB03dLuf)
                              |j $ {} (:text |store) (:type :leaf) (:at 1519975631490) (:by |root) (:id |H1mL0nuIuf)
                            :type :expr
                            :at 1519975629341
                            :by |root
                            :id |ryrS0ndLOG
                          |P $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629279183422) (:text |<>)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629279183422)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629279183422) (:text |str)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629279183422) (:text "||unknown: ")
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629279183422)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629279183422) (:text |:page)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629279183422) (:text |store)
                            :type :expr
                            :at 1629279183422
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |:home) (:type :leaf) (:at 1519975634683) (:by |root) (:id |rk-FCn_I_G)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-home) (:type :leaf) (:at 1520007911307) (:by |root) (:id |ryOWyljgv_G)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1520007931802) (:by |root) (:id |S1lzZjgvOf)
                                      |j $ {} (:text |store) (:type :leaf) (:at 1520007932616) (:by |root) (:id |HkENWigPuf)
                                    :type :expr
                                    :at 1520007930942
                                    :by |root
                                    :id |ryQ-oxw_M
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:error) (:type :leaf) (:at 1520008498250) (:by |root) (:id |Sk_4pxPdz)
                                      |j $ {} (:text |store) (:type :leaf) (:at 1520008502232) (:by |root) (:id |B1VcEaxvOf)
                                    :type :expr
                                    :at 1520008495864
                                    :by |root
                                    :id |rkl_46lvdG
                                :type :expr
                                :at 1520007929649
                                :by |root
                                :id |HJf-sxPuf
                            :type :expr
                            :at 1519975632864
                            :by |root
                            :id |BJgF03uIOM
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:grid) (:type :leaf) (:at 1519976061974) (:by |root) (:id |Sk7jC2dIOGleaf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |div) (:type :leaf) (:at 1520073523873) (:by |root) (:id |rkeqVsedOz)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520073525572) (:by |root) (:id |Hy-2VigO_f)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |:style) (:type :leaf) (:at 1520073560625) (:by |root) (:id |rykDjx__G)
                                          |T $ {}
                                            :data $ {}
                                              |D $ {} (:text |{}) (:type :leaf) (:at 1520073563170) (:by |root) (:id |Skzwieu_M)
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1520073527534) (:by |root) (:id |SyZ0VoeddM)
                                                  |j $ {} (:text |4) (:type :leaf) (:at 1520073528450) (:by |root) (:id |HylxHieddf)
                                                :type :expr
                                                :at 1520073525929
                                                :by |root
                                                :id |Syf0Eieduf
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:overflow) (:type :leaf) (:at 1520073540285) (:by |root) (:id |BkoHoedOzleaf)
                                                  |j $ {} (:text |:auto) (:type :leaf) (:at 1520073542433) (:by |root) (:id |Hy6Hsxu_G)
                                                :type :expr
                                                :at 1520073538705
                                                :by |root
                                                :id |BJWUvoxu_f
                                            :type :expr
                                            :at 1520073561340
                                            :by |root
                                            :id |SyzZvjludG
                                        :type :expr
                                        :at 1520073557085
                                        :by |root
                                        :id |BJTUsg_OM
                                    :type :expr
                                    :at 1520073524135
                                    :by |root
                                    :id |BkGn4ieudf
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |comp-edn-grid) (:type :leaf) (:at 1519976183187) (:by |root) (:id |BJby6uI_z)
                                      |b $ {} (:text |states) (:type :leaf) (:at 1520098366039) (:by |root) (:id |r1grr3Iu_M)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |:data) (:type :leaf) (:at 1520008657072) (:by |root) (:id |BJgdCTlP_M)
                                          |T $ {} (:text |store) (:type :leaf) (:at 1519976186087) (:by |root) (:id |H1ZbktLuz)
                                        :type :expr
                                        :at 1520008655562
                                        :by |root
                                        :id |HyOC6lwOz
                                    :type :expr
                                    :at 1519975641708
                                    :by |root
                                    :id |H1Gk6OUOf
                                :type :expr
                                :at 1520073521639
                                :by |root
                                :id |rJcNjlOuG
                            :type :expr
                            :at 1519975635406
                            :by |root
                            :id |Sk7jC2dIOG
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |:about) (:type :leaf) (:at 1520096618258) (:by |root) (:id |Sk7jC2dIOGleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-about) (:type :leaf) (:at 1520096621277) (:by |root) (:id |ByXuHUOOG)
                                :type :expr
                                :at 1520096619491
                                :by |root
                                :id |rylmuB8ddG
                            :type :expr
                            :at 1519975635406
                            :by |root
                            :id |rJ6vr8__f
                        :type :expr
                        :at 1519975626476
                        :by |root
                        :id |S1GR2uU_z
                      |u $ {}
                        :data $ {}
                          |D $ {} (:text |;) (:type :leaf) (:at 1520096818902) (:by |root) (:id |ryjV8LuuG)
                          |T $ {} (:text |comp-inspect) (:type :leaf) (:at 1519975954181) (:by |root) (:id |S1DMAOLOfleaf)
                          |j $ {} (:text ||Store) (:type :leaf) (:at 1519975958695) (:by |root) (:id |HyQ5M0dLOG)
                          |r $ {} (:text |store) (:type :leaf) (:at 1519975959682) (:by |root) (:id |r1ZkQCu8_z)
                          |v $ {} (:text |nil) (:type :leaf) (:at 1519975960135) (:by |root) (:id |HyGgm0_8uz)
                        :type :expr
                        :at 1519975950870
                        :by |root
                        :id |S1DMAOLOf
                      |x $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |comp-reel) (:time 1507461815046) (:type :leaf) (:id |rJc29KD2-leaf)
                          |b $ {}
                            :data $ {}
                              |D $ {} (:text |>>) (:type :leaf) (:at 1629279176024) (:by |rJG4IHzWf)
                              |T $ {} (:author |root) (:text |states) (:time 1509727101297) (:type :leaf) (:id |B1BYoG90Z)
                              |j $ {} (:text |:reel) (:type :leaf) (:at 1629279176799) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629279175372
                            :by |rJG4IHzWf
                          |j $ {} (:author |root) (:text |reel) (:time 1507461840459) (:type :leaf) (:id |rJx_05Fw3Z)
                          |r $ {} (:author |root)
                            :data $ {}
                              |T $ {} (:author |root) (:text |{}) (:time 1507461841342) (:type :leaf) (:id |Bkt05FDhW)
                            :time 1507461840980
                            :type :expr
                            :id |B1xKR5Fw3b
                        :time 1507461809635
                        :type :expr
                        :id |rJc29KD2-
                    :time 1499755354983
                    :type :expr
                    :id |SyWfsuY5THW
                :time 1507461832154
                :type :expr
                :id |r1-eRcYv3-
            :time 1499755354983
            :type :expr
            :id |BJ2WiOF9pBW
          |comp-home $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520007914378) (:by |root) (:id |SkZkxsgvuz)
              |j $ {} (:text |comp-home) (:type :leaf) (:at 1520007911307) (:by |root) (:id |B1z1xoxDOz)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |content) (:type :leaf) (:at 1520007917634) (:by |root) (:id |SkeQljxwuf)
                  |j $ {} (:text |error) (:type :leaf) (:at 1520008491993) (:by |root) (:id |Hye7ETgDdf)
                :type :expr
                :at 1520007915207
                :by |root
                :id |rJZXgilDdf
              |r $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1520007911307) (:by |root) (:id |SJ4ylsev_M)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520007911307) (:by |root) (:id |SJUJxigwuG)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520007943980) (:by |root) (:id |SJlyMoxvOf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1520007959903) (:by |root) (:id |rk-17jxwdG)
                              |L $ {} (:text |ui/flex) (:type :leaf) (:at 1520007962132) (:by |root) (:id |rJmgQjeDOG)
                              |T $ {} (:text |ui/row) (:type :leaf) (:at 1520007946950) (:by |root) (:id |BJ-xzsxwdM)
                            :type :expr
                            :at 1520007958923
                            :by |root
                            :id |BJgymsgwOf
                        :type :expr
                        :at 1520007942863
                        :by |root
                        :id |HkbJMjlvOz
                    :type :expr
                    :at 1520007911307
                    :by |root
                    :id |SyS1gjgv_M
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |textarea) (:type :leaf) (:at 1520007911307) (:by |root) (:id |ryd1xsgwOG)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520007911307) (:by |root) (:id |ry5klslDuf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:value) (:type :leaf) (:at 1520007911307) (:by |root) (:id |S12kgjgvOG)
                              |j $ {} (:text |content) (:type :leaf) (:at 1520007923967) (:by |root) (:id |BJliljlDdz)
                            :type :expr
                            :at 1520007911307
                            :by |root
                            :id |ryoJeslwuM
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:placeholder) (:type :leaf) (:at 1520007911307) (:by |root) (:id |HkbxJgilwOG)
                              |j $ {} (:text ||Content) (:type :leaf) (:at 1520007911307) (:by |root) (:id |S1MxklilPuz)
                            :type :expr
                            :at 1520007911307
                            :by |root
                            :id |ryeg1esxwuM
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520007911307) (:by |root) (:id |ryElyxilPdM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1520007911307) (:by |root) (:id |HyLgJxsev_M)
                                  |j $ {} (:text |ui/textarea) (:type :leaf) (:at 1520007911307) (:by |root) (:id |HkDxkeixvOM)
                                  |n $ {} (:text |ui/flex) (:type :leaf) (:at 1520012322136) (:by |root) (:id |H1ewmhbPOM)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520007911307) (:by |root) (:id |S1Kg1liewOz)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1520007911307) (:by |root) (:id |Sysx1gjgvuM)
                                          |j $ {} (:text |640) (:type :leaf) (:at 1520007911307) (:by |root) (:id |SkhxJxsewuf)
                                        :type :expr
                                        :at 1520007911307
                                        :by |root
                                        :id |Sy9eyejlvdG
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:resize) (:type :leaf) (:at 1520008012716) (:by |root) (:id |BymIolvOMleaf)
                                          |j $ {} (:text |:none) (:type :leaf) (:at 1520008014665) (:by |root) (:id |S1bB8igw_M)
                                        :type :expr
                                        :at 1520008011425
                                        :by |root
                                        :id |BymIolvOM
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-family) (:type :leaf) (:at 1520008363670) (:by |root) (:id |Ske-33gP_zleaf)
                                          |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1520008368294) (:by |root) (:id |Hkx4nngPuf)
                                        :type :expr
                                        :at 1520008360781
                                        :by |root
                                        :id |Ske-33gP_z
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:flex-shrink) (:type :leaf) (:at 1520008526553) (:by |root) (:id |Skeg8TgPuGleaf)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1520008528203) (:by |root) (:id |rJevLTlwuf)
                                        :type :expr
                                        :at 1520008520278
                                        :by |root
                                        :id |Skeg8TgPuG
                                      |y $ {}
                                        :data $ {}
                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1520073728584) (:by |root) (:id |BJHW3x_dzleaf)
                                          |j $ {} (:text ||1.4em) (:type :leaf) (:at 1520073733130) (:by |root) (:id |HJetW3ludM)
                                        :type :expr
                                        :at 1520073724748
                                        :by |root
                                        :id |BJHW3x_dz
                                    :type :expr
                                    :at 1520007911307
                                    :by |root
                                    :id |SJuxJgolPuG
                                :type :expr
                                :at 1520007911307
                                :by |root
                                :id |Bkreyxiewdf
                            :type :expr
                            :at 1520007911307
                            :by |root
                            :id |B1mgkejeDuz
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |:on-input) (:type :leaf) (:at 1520007911307) (:by |root) (:id |H1b-Jgogv_z)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |fn) (:type :leaf) (:at 1629278908175) (:by |rJG4IHzWf)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1629278908883) (:by |rJG4IHzWf)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1629278909450) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629278908569
                                    :by |rJG4IHzWf
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1629278906634) (:by |rJG4IHzWf) (:id |SyX-yeoxDOz)
                                      |j $ {} (:text |:content) (:type :leaf) (:at 1520007911307) (:by |root) (:id |By4Z1ljgDuM)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:value) (:type :leaf) (:at 1520007911307) (:by |root) (:id |ry8-keslvuG)
                                          |j $ {} (:text |e) (:type :leaf) (:at 1629279210590) (:by |rJG4IHzWf) (:id |HJvZJgjewOG)
                                        :type :expr
                                        :at 1520007911307
                                        :by |root
                                        :id |BkrbyxolDOG
                                    :type :expr
                                    :at 1520007911307
                                    :by |root
                                    :id |BJGZJxslDdG
                                :type :expr
                                :at 1629278907309
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1520007911307
                            :by |root
                            :id |H1eZJgjevdM
                        :type :expr
                        :at 1520007911307
                        :by |root
                        :id |HkK1xjgP_f
                    :type :expr
                    :at 1520007911307
                    :by |root
                    :id |H1P1xogPuz
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1520097110173) (:by |root) (:id |Hy0IvUOuG)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520097110907) (:by |root) (:id |H1mAUvUddz)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520008020583) (:by |root) (:id |H1oUjxwuz)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520008026127) (:by |root) (:id |Bke6IsgwOG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1520008028297) (:by |root) (:id |H1VGDogw_f)
                                      |j $ {} (:text |8) (:type :leaf) (:at 1520008028768) (:by |root) (:id |B1UNwjlPOM)
                                    :type :expr
                                    :at 1520008026661
                                    :by |root
                                    :id |SJmwoxPdM
                                :type :expr
                                :at 1520008020797
                                :by |root
                                :id |S1Z6LjxwuG
                            :type :expr
                            :at 1520008019540
                            :by |root
                            :id |SylBvPI_df
                        :type :expr
                        :at 1520097110454
                        :by |root
                        :id |S14AIvL_dG
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1520008017525) (:by |root) (:id |Hyt8sgwOMleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520008018139) (:by |root) (:id |rke9IievOf)
                            :type :expr
                            :at 1520008017777
                            :by |root
                            :id |H1W9Uilvuz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |button) (:type :leaf) (:at 1520008032152) (:by |root) (:id |HylwwslD_Mleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520008032769) (:by |root) (:id |H1rOPjePuM)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1520008036471) (:by |root) (:id |ryZtwsgvuz)
                                      |j $ {} (:text |ui/button) (:type :leaf) (:at 1520008039176) (:by |root) (:id |SJTDsxDuM)
                                    :type :expr
                                    :at 1520008033070
                                    :by |root
                                    :id |rkGFDsxDuf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:on-click) (:type :leaf) (:at 1520008106188) (:by |root) (:id |HJxlhjxPufleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1520008106728) (:by |root) (:id |ry7fhsgDdz)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1520008107243) (:by |root) (:id |BkZQ2sgDdz)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1520008109504) (:by |root) (:id |SkNmhigPuf)
                                            :type :expr
                                            :at 1520008107057
                                            :by |root
                                            :id |rkz73iePuf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |try) (:type :leaf) (:at 1520008116714) (:by |root) (:id |H1e_hilv_zleaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |let) (:type :leaf) (:at 1520008120361) (:by |root) (:id |BJf62jewdz)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |data) (:type :leaf) (:at 1520008123159) (:by |root) (:id |H1zlailDdG)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629278946656) (:by |rJG4IHzWf) (:id |ByE6oxwOz)
                                                              |j $ {} (:text |content) (:type :leaf) (:at 1520008130870) (:by |root) (:id |S1gK6jlPuf)
                                                            :type :expr
                                                            :at 1520008124349
                                                            :by |root
                                                            :id |HyeNTigDuz
                                                        :type :expr
                                                        :at 1520008120770
                                                        :by |root
                                                        :id |HJgWToePuM
                                                    :type :expr
                                                    :at 1520008120623
                                                    :by |root
                                                    :id |rybTjgw_f
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1520008152510) (:by |root) (:id |BJ0CsePOfleaf)
                                                      |j $ {} (:text |:data) (:type :leaf) (:at 1520008166891) (:by |root) (:id |SyZJ2xPuG)
                                                      |r $ {} (:text |data) (:type :leaf) (:at 1520008167961) (:by |root) (:id |r1fkxngDdf)
                                                    :type :expr
                                                    :at 1520008150296
                                                    :by |root
                                                    :id |BJ0CsePOf
                                                :type :expr
                                                :at 1520008118287
                                                :by |root
                                                :id |BJ0njlv_G
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1629278917964) (:by |rJG4IHzWf) (:id |rJQg3xwufleaf)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629278918816)
                                                    :data $ {}
                                                      |T $ {} (:text |err) (:type :leaf) (:at 1520008174218) (:by |root) (:id |HkLgnxPdz)
                                                  |n $ {}
                                                    :data $ {}
                                                      |j $ {} (:text |js/console.log) (:type :leaf) (:at 1629278941123) (:by |rJG4IHzWf) (:id |rJQ3X3eDdf)
                                                      |r $ {} (:text |err) (:type :leaf) (:at 1520008230501) (:by |root) (:id |BJ-A7hlwdG)
                                                    :type :expr
                                                    :at 1520008227066
                                                    :by |root
                                                    :id |HyxoQ3eP_f
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1520008217715) (:by |root) (:id |SJAf3xwuG)
                                                      |j $ {} (:text |:error) (:type :leaf) (:at 1520008218670) (:by |root) (:id |H1xM72lvOM)
                                                      |r $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |str) (:type :leaf) (:at 1520008225398) (:by |root) (:id |rktmhePdz)
                                                          |T $ {} (:text |err) (:type :leaf) (:at 1520008222549) (:by |root) (:id |HJN7nevdz)
                                                        :type :expr
                                                        :at 1520008223894
                                                        :by |root
                                                        :id |Byd72lPdf
                                                    :type :expr
                                                    :at 1520008214185
                                                    :by |root
                                                    :id |ByeAG3gPOM
                                                :type :expr
                                                :at 1520008170784
                                                :by |root
                                                :id |rJQg3xwuf
                                            :type :expr
                                            :at 1520008111879
                                            :by |root
                                            :id |H1e_hilv_z
                                        :type :expr
                                        :at 1520008106415
                                        :by |root
                                        :id |Hy4fnjlDdf
                                    :type :expr
                                    :at 1520008104171
                                    :by |root
                                    :id |HJxlhjxPuf
                                :type :expr
                                :at 1520008032437
                                :by |root
                                :id |HJUuPoxPOG
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1520008072469) (:by |root) (:id |SybgOigPOMleaf)
                                  |j $ {} (:text "||Parse EDN") (:type :leaf) (:at 1520097148622) (:by |root) (:id |HJ-Z_jgvuf)
                                :type :expr
                                :at 1520008040260
                                :by |root
                                :id |SybgOigPOM
                            :type :expr
                            :at 1520008030829
                            :by |root
                            :id |HylwwslD_M
                          |s $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1520097094732) (:by |root) (:id |Skx6BDL_dGleaf)
                              |j $ {} (:text |8) (:type :leaf) (:at 1520097095194) (:by |root) (:id |B1ly8D8__z)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1520097095722) (:by |root) (:id |SJzyUwIu_z)
                            :type :expr
                            :at 1520097093517
                            :by |root
                            :id |Skx6BDL_dG
                          |t $ {}
                            :data $ {}
                              |T $ {} (:text |button) (:type :leaf) (:at 1520008032152) (:by |root) (:id |HylwwslD_Mleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520008032769) (:by |root) (:id |H1rOPjePuM)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1520008036471) (:by |root) (:id |ryZtwsgvuz)
                                      |j $ {} (:text |ui/button) (:type :leaf) (:at 1520008039176) (:by |root) (:id |SJTDsxDuM)
                                    :type :expr
                                    :at 1520008033070
                                    :by |root
                                    :id |rkGFDsxDuf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:on-click) (:type :leaf) (:at 1520008106188) (:by |root) (:id |HJxlhjxPufleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1520008106728) (:by |root) (:id |ry7fhsgDdz)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1520008107243) (:by |root) (:id |BkZQ2sgDdz)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1520008109504) (:by |root) (:id |SkNmhigPuf)
                                            :type :expr
                                            :at 1520008107057
                                            :by |root
                                            :id |rkz73iePuf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |try) (:type :leaf) (:at 1520008116714) (:by |root) (:id |H1e_hilv_zleaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |let) (:type :leaf) (:at 1520008120361) (:by |root) (:id |BJf62jewdz)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |data) (:type :leaf) (:at 1520008123159) (:by |root) (:id |H1zlailDdG)
                                                          |j $ {}
                                                            :data $ {}
                                                              |b $ {} (:text |js/JSON.parse) (:type :leaf) (:at 1629278958883) (:by |rJG4IHzWf) (:id |Bk7YdUudf)
                                                              |j $ {} (:text |content) (:type :leaf) (:at 1520008130870) (:by |root) (:id |S1gK6jlPuf)
                                                            :type :expr
                                                            :at 1520008124349
                                                            :by |root
                                                            :id |HyeNTigDuz
                                                        :type :expr
                                                        :at 1520008120770
                                                        :by |root
                                                        :id |HJgWToePuM
                                                    :type :expr
                                                    :at 1520008120623
                                                    :by |root
                                                    :id |rybTjgw_f
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1520008152510) (:by |root) (:id |BJ0CsePOfleaf)
                                                      |j $ {} (:text |:data) (:type :leaf) (:at 1520008166891) (:by |root) (:id |SyZJ2xPuG)
                                                      |r $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |to-calcit-data) (:type :leaf) (:at 1629278966546) (:by |rJG4IHzWf) (:id |r1-5O8u_M)
                                                          |T $ {} (:text |data) (:type :leaf) (:at 1520008167961) (:by |root) (:id |r1fkxngDdf)
                                                        :type :expr
                                                        :at 1520097416417
                                                        :by |root
                                                        :id |rJgxcO8_uz
                                                    :type :expr
                                                    :at 1520008150296
                                                    :by |root
                                                    :id |BJ0CsePOf
                                                :type :expr
                                                :at 1520008118287
                                                :by |root
                                                :id |BJ0njlv_G
                                              |r $ {}
                                                :data $ {}
                                                  |L $ {} (:text |fn) (:type :leaf) (:at 1629278932725) (:by |rJG4IHzWf)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629278933448)
                                                    :data $ {}
                                                      |T $ {} (:text |err) (:type :leaf) (:at 1520008174218) (:by |root) (:id |HkLgnxPdz)
                                                  |n $ {}
                                                    :data $ {}
                                                      |j $ {} (:text |js/console.log) (:type :leaf) (:at 1629278937967) (:by |rJG4IHzWf) (:id |rJQ3X3eDdf)
                                                      |r $ {} (:text |err) (:type :leaf) (:at 1520008230501) (:by |root) (:id |BJ-A7hlwdG)
                                                    :type :expr
                                                    :at 1520008227066
                                                    :by |root
                                                    :id |HyxoQ3eP_f
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1520008217715) (:by |root) (:id |SJAf3xwuG)
                                                      |j $ {} (:text |:error) (:type :leaf) (:at 1520008218670) (:by |root) (:id |H1xM72lvOM)
                                                      |r $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |str) (:type :leaf) (:at 1520008225398) (:by |root) (:id |rktmhePdz)
                                                          |T $ {} (:text |err) (:type :leaf) (:at 1520008222549) (:by |root) (:id |HJN7nevdz)
                                                        :type :expr
                                                        :at 1520008223894
                                                        :by |root
                                                        :id |Byd72lPdf
                                                    :type :expr
                                                    :at 1520008214185
                                                    :by |root
                                                    :id |ByeAG3gPOM
                                                :type :expr
                                                :at 1520008170784
                                                :by |root
                                                :id |rJQg3xwuf
                                            :type :expr
                                            :at 1520008111879
                                            :by |root
                                            :id |H1e_hilv_z
                                        :type :expr
                                        :at 1520008106415
                                        :by |root
                                        :id |Hy4fnjlDdf
                                    :type :expr
                                    :at 1520008104171
                                    :by |root
                                    :id |HJxlhjxPuf
                                :type :expr
                                :at 1520008032437
                                :by |root
                                :id |HJUuPoxPOG
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1520008072469) (:by |root) (:id |SybgOigPOMleaf)
                                  |j $ {} (:text "||Parse JSON") (:type :leaf) (:at 1520097145749) (:by |root) (:id |HJ-Z_jgvuf)
                                :type :expr
                                :at 1520008040260
                                :by |root
                                :id |SybgOigPOM
                            :type :expr
                            :at 1520008030829
                            :by |root
                            :id |H1sSw8d_M
                        :type :expr
                        :at 1520008017118
                        :by |root
                        :id |Hyt8sgwOM
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1520008484046) (:by |root) (:id |B1hQTlD_Gleaf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |some?) (:type :leaf) (:at 1520008489415) (:by |root) (:id |H1bEalwOz)
                              |T $ {} (:text |error) (:type :leaf) (:at 1520008488010) (:by |root) (:id |Hyg6Q6gvdz)
                            :type :expr
                            :at 1520008488233
                            :by |root
                            :id |B1zx4pewuG
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1520008507190) (:by |root) (:id |ryxzralDdfleaf)
                              |j $ {} (:text |error) (:type :leaf) (:at 1520008508674) (:by |root) (:id |rk4SalPOG)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520008509353) (:by |root) (:id |SkZSHTgwdf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:color) (:type :leaf) (:at 1520008510349) (:by |root) (:id |rJHrSpgDuM)
                                      |j $ {} (:text |:red) (:type :leaf) (:at 1520008510964) (:by |root) (:id |SyLIHpxwOf)
                                    :type :expr
                                    :at 1520008509633
                                    :by |root
                                    :id |BJUH6lDdG
                                :type :expr
                                :at 1520008509024
                                :by |root
                                :id |rkzSrpgvdM
                            :type :expr
                            :at 1520008506171
                            :by |root
                            :id |ryxzralDdf
                        :type :expr
                        :at 1520008483538
                        :by |root
                        :id |ryqwP8dOG
                    :type :expr
                    :at 1520097109342
                    :by |root
                    :id |BkaUP8_dz
                :type :expr
                :at 1520007911307
                :by |root
                :id |Sy7ylsxDOM
            :type :expr
            :at 1520007911307
            :by |root
            :id |H1x1gsevuf
          |comp-about $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520096624824) (:by |root) (:id |ryWPuBI_uf)
              |j $ {} (:text |comp-about) (:type :leaf) (:at 1520096622694) (:by |root) (:id |B1fwdSI_dz)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1520096622694
                :by |root
                :id |rJQDuBIduG
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1520096689645) (:by |root) (:id |Byt2SUudMleaf)
                  |j $ {} (:text ||pl) (:type :leaf) (:at 1520096690376) (:by |root) (:id |HkZcnSI_uG)
                :type :expr
                :at 1520096688738
                :by |root
                :id |Byt2SUudM
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1520096627524) (:by |root) (:id |rkq_B8_dfleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520096629135) (:by |root) (:id |Hyl3OrLddM)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520096826643) (:by |root) (:id |SkfSIIduf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520096827264) (:by |root) (:id |S1-QB8U_dM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1520096828949) (:by |root) (:id |B1SQBLIdOz)
                                  |j $ {} (:text |8) (:type :leaf) (:at 1520096829601) (:by |root) (:id |HJ4BHLLOOf)
                                :type :expr
                                :at 1520096827618
                                :by |root
                                :id |rkxVB88uuM
                            :type :expr
                            :at 1520096826965
                            :by |root
                            :id |SkGXH8IudM
                        :type :expr
                        :at 1520096825896
                        :by |root
                        :id |rkxzS88uOG
                    :type :expr
                    :at 1520096627767
                    :by |root
                    :id |rkbhOrU_OG
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-md) (:type :leaf) (:at 1520096637332) (:by |root) (:id |SyEFrUuuG)
                      |j $ {} (:text "||EDN Grid is a tool for displaying deep data. It's hosted on Github [Memkits/edn-grid](https://github.com/Memkits/edn-grid).") (:type :leaf) (:at 1520096920015) (:by |root) (:id |SkLKr8OuG)
                    :type :expr
                    :at 1520096634154
                    :by |root
                    :id |rJlMtBLuOM
                :type :expr
                :at 1520096626029
                :by |root
                :id |rkq_B8_df
            :type :expr
            :at 1520096622694
            :by |root
            :id |rkxwuBUOdM
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rksbjOYqpSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |rJgjuY5pSb)
            |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |HybjuF9pS-)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root) (:id |ryKcErMdGleaf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root) (:id |HJMtqNBGuf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root) (:id |Syl69VHMuM)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root) (:id |HJwaqVHM_M)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root) (:id |BJf0cVSMdz)
                      :type :expr
                      :at 1519699093683
                      :by |root
                      :id |S1R54BfuG
                  :type :expr
                  :at 1519699088529
                  :by |root
                  :id |ryKcErMdG
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519975828451) (:by |root) (:id |Bye2qT_Lufleaf)
                    |j $ {} (:text |feather.core) (:type :leaf) (:at 1563124709937) (:by |root) (:id |S1p9TuLdG)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519975832670) (:by |root) (:id |S17xoTdIOf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519975833362) (:by |root) (:id |rJZWia_8_z)
                        |j $ {} (:text |comp-i) (:type :leaf) (:at 1563124931240) (:by |root) (:id |HJSbi6OLOf)
                      :type :expr
                      :at 1519975832879
                      :by |root
                      :id |B1f-i6_IdG
                  :type :expr
                  :at 1519975828162
                  :by |root
                  :id |Bye2qT_Luf
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519975963126) (:by |root) (:id |rJX7AOUOMleaf)
                    |j $ {} (:text |respo.comp.inspect) (:type :leaf) (:at 1519975967149) (:by |root) (:id |HkGX7ROL_z)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519975967847) (:by |root) (:id |HkNwmROLOG)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519975968220) (:by |root) (:id |r17_X0OUdG)
                        |j $ {} (:text |comp-inspect) (:type :leaf) (:at 1519975971262) (:by |root) (:id |SJDO7Ad8dz)
                      :type :expr
                      :at 1519975968050
                      :by |root
                      :id |HJNd7R_8OM
                  :type :expr
                  :at 1519975962699
                  :by |root
                  :id |rJX7AOUOM
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519976188997) (:by |root) (:id |B1rZyKL_Mleaf)
                    |j $ {} (:text |app.comp.edn-grid) (:type :leaf) (:at 1519976193409) (:by |root) (:id |Hyfr-kYIdM)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519976196746) (:by |root) (:id |SkjbkKLOf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519976197132) (:by |root) (:id |BkzaZktIuz)
                        |j $ {} (:text |comp-edn-grid) (:type :leaf) (:at 1519976222328) (:by |root) (:id |BJU6WyK8dz)
                      :type :expr
                      :at 1519976196932
                      :by |root
                      :id |rym6WkYLOG
                  :type :expr
                  :at 1519976188625
                  :by |root
                  :id |B1rZyKL_M
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1520008057851) (:by |root) (:id |SJg-KoxD_zleaf)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1520008061983) (:by |root) (:id |By-GYolD_f)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1520008062984) (:by |root) (:id |HJELtjlvuG)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1520008063300) (:by |root) (:id |HkVPYilwdG)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1520008063872) (:by |root) (:id |Sy_Ptjxv_G)
                      :type :expr
                      :at 1520008063150
                      :by |root
                      :id |SJBvYigDuz
                  :type :expr
                  :at 1520008057259
                  :by |root
                  :id |SJg-KoxD_z
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1520008135803) (:by |root) (:id |B166oxwdMleaf)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1520008138768) (:by |root) (:id |ByfeCsxDuz)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1520008140856) (:by |root) (:id |B1gVRoePOf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1520008142204) (:by |root) (:id |HyfHCogPOf)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1520008146016) (:by |root) (:id |HJxUAoxPOf)
                      :type :expr
                      :at 1520008141138
                      :by |root
                      :id |rymBCixP_M
                  :type :expr
                  :at 1520008132634
                  :by |root
                  :id |B166oxwdM
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629278883798) (:text |respo-ui.core)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |BkLgidF56rb)
                        |j $ {} (:author |root) (:text |hsl) (:time 1499755354983) (:type :leaf) (:id |SkPxidY56H-)
                      :time 1499755354983
                      :type :expr
                      :id |SyHeiOYcTr-
                  :time 1499755354983
                  :type :expr
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJtgouK5pBZ)
                    |j $ {} (:author |root) (:text |respo-ui.core) (:time 1499755354983) (:type :leaf) (:at 1516527080962) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |HJoxsuF5pr-)
                    |v $ {} (:author |root) (:text |ui) (:time 1499755354983) (:type :leaf) (:id |r1hgjuY5TH-)
                  :time 1499755354983
                  :type :expr
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |r1BodKcprZ)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:at 1563124202756) (:by |root) (:id |ryLoOY5pHb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1508946162679) (:type :leaf) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359490531) (:type :leaf) (:id |BJtB8rGbG)
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1KidKq6r-)
                        |j $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |B1cs_Fq6B-)
                        |l $ {} (:text |>>) (:type :leaf) (:at 1629279215103) (:by |rJG4IHzWf)
                        |r $ {} (:author |root) (:text |<>) (:time 1499755354983) (:type :leaf) (:id |SJsiOY5pr-)
                        |v $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SJ2oOY96S-)
                        |x $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |BkpiOFq6S-)
                        |y $ {} (:author |root) (:text |span) (:time 1499755354983) (:type :leaf) (:id |r1Aj_YqaB-)
                      :time 1499755354983
                      :type :expr
                      :id |H1do_K5aS-
                  :time 1499755354983
                  :type :expr
                  :id |SJgC3cjTTW
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJH-s_t96rb)
                    |j $ {} (:author |root) (:text |respo.comp.space) (:time 1499755354983) (:type :leaf) (:id |SyUbi_t5pH-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rkFWouKcTr-)
                        |j $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy5WjdY5TS-)
                      :time 1499755354983
                      :type :expr
                      :id |rJd-iOKc6rZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy4-oOt96SZ
                |y $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507461846175) (:type :leaf) (:id |SkACcYv2-leaf)
                    |j $ {} (:author |root) (:text |reel.comp.reel) (:time 1507461855480) (:type :leaf) (:id |HJfRR5KPh-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507461856264) (:type :leaf) (:id |ryOyjtwnb)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507461856706) (:type :leaf) (:id |HJ8u1otP3W)
                        |j $ {} (:author |root) (:text |comp-reel) (:time 1507461858342) (:type :leaf) (:id |r1bt1sKwhZ)
                      :time 1507461856484
                      :type :expr
                      :id |BJwOyitPhW
                  :time 1507461845717
                  :type :expr
                  :id |SkACcYv2-
              :time 1499755354983
              :type :expr
              :id |SJkgodY9TSW
          :time 1499755354983
          :type :expr
          :id |H1o_Y9ar-
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |ryBoejdY5arb)
              |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |H1Iils_Y96BZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Bkuogo_F9pr-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1499755354983) (:type :leaf) (:id |By5oeoOY5pBb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |{}) (:time 1499755354983) (:type :leaf) (:id |Hyhixo_F9prb)
                        :time 1499755354983
                        :type :expr
                        :id |H1iieoOKqTSZ
                    :time 1499755354983
                    :type :expr
                    :id |BkYogiuK9TBZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359514709) (:type :leaf) (:id |BJ0oxjdFq6rb)
                      |j $ {} (:author |rJG4IHzWf) (:text ||) (:time 1512359516026) (:type :leaf) (:id |BJy2go_tcaBZ)
                    :time 1499755354983
                    :type :expr
                    :id |B1aixsdK9pHb
                  |s $ {}
                    :data $ {}
                      |T $ {} (:text |:data) (:type :leaf) (:at 1520008161124) (:by |root) (:id |HkxukngDdfleaf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1520008163371) (:by |root) (:id |rk4ty2eDdf)
                    :type :expr
                    :at 1520008160308
                    :by |root
                    :id |HkxukngDdf
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:error) (:type :leaf) (:at 1520008098472) (:by |root) (:id |rkYjsxwufleaf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1520008099334) (:by |root) (:id |BJisogwOG)
                    :type :expr
                    :at 1520008097429
                    :by |root
                    :id |rkYjsxwuf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:page) (:type :leaf) (:at 1519975617851) (:by |root) (:id |Syl2nnOLuMleaf)
                      |j $ {} (:text |:home) (:type :leaf) (:at 1519975619152) (:by |root) (:id |Syzq63_8_M)
                    :type :expr
                    :at 1519975603868
                    :by |root
                    :id |Syl2nnOLuM
                :time 1499755354983
                :type :expr
                :id |ryviloOFc6B-
            :time 1499755354983
            :type :expr
            :id |HkEjgouFcpBW
          |config $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root) (:id |Hy-Of025IG)
              |j $ {} (:text |config) (:type :leaf) (:at 1518157327696) (:by |root) (:id |SyfufCnc8G)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root) (:id |HyZ5XCh58M)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:storage) (:type :leaf) (:at 1518157348163) (:by |root) (:id |Sk-j70n5UG)
                      |j $ {} (:text ||edn-grid) (:type :leaf) (:at 1520007836406) (:by |root) (:id |ByN2XChq8z)
                    :type :expr
                    :at 1518157346876
                    :by |root
                    :id |ryzsXA35Lz
                :type :expr
                :at 1518157327696
                :by |root
                :id |Hy7OfCnqUG
            :type :expr
            :at 1518157327696
            :by |root
            :id |SJxuM0258M
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |rkmjesdF9Trb
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |HyWslouK56HZ)
            |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |SkGsgsOtcTBb)
          :time 1499755354983
          :type :expr
          :id |rJxieodtqarW
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |H1U1esuY5TBZ)
              |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJwJxj_Y5aHZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |r1YyxidF96rW)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |r1cJxouK5aSZ)
                  |r $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |Bkj1ljdY5Tr-)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root) (:id |S1gUCbfy_G)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root) (:id |ryzsAWMkdG)
                :time 1499755354983
                :type :expr
                :id |SkdkeiOK5TBZ
              |v $ {}
                :data $ {}
                  |rT $ {}
                    :data $ {}
                      |T $ {} (:text |:data) (:type :leaf) (:at 1520008249601) (:by |root) (:id |B1WBnlw_Gleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1520008252298) (:by |root) (:id |SkWzH2eDOG)
                          |j $ {} (:text |store) (:type :leaf) (:at 1520008252973) (:by |root) (:id |B1M4rhgPuz)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |assoc) (:type :leaf) (:at 1520008254153) (:by |root) (:id |H1VSH3gD_G)
                              |j $ {} (:text |:data) (:type :leaf) (:at 1520008255765) (:by |root) (:id |SyXUr2xw_M)
                              |r $ {} (:text |op-data) (:type :leaf) (:at 1520008257346) (:by |root) (:id |S1GdB3lv_z)
                            :type :expr
                            :at 1520008253237
                            :by |root
                            :id |HkrBH3xvOM
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |assoc) (:type :leaf) (:at 1520008259283) (:by |root) (:id |r1x5r3eP_fleaf)
                              |j $ {} (:text |:error) (:type :leaf) (:at 1520008261128) (:by |root) (:id |rJzsShev_G)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1520008261720) (:by |root) (:id |rymar2ewOG)
                            :type :expr
                            :at 1520008257788
                            :by |root
                            :id |r1x5r3eP_f
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |assoc) (:type :leaf) (:at 1520008338521) (:by |root) (:id |BJ-u9nlwuGleaf)
                              |j $ {} (:text |:page) (:type :leaf) (:at 1520008340229) (:by |root) (:id |SyxicnlvOz)
                              |r $ {} (:text |:grid) (:type :leaf) (:at 1520008342853) (:by |root) (:id |SJE352lD_z)
                            :type :expr
                            :at 1520008336146
                            :by |root
                            :id |BJ-u9nlwuG
                        :type :expr
                        :at 1520008250522
                        :by |root
                        :id |Hy7HneDuG
                    :type :expr
                    :at 1520008248823
                    :by |root
                    :id |B1WBnlw_G
                  |rj $ {}
                    :data $ {}
                      |T $ {} (:text |:error) (:type :leaf) (:at 1520008266008) (:by |root) (:id |HJbJ82gwdGleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |assoc) (:type :leaf) (:at 1520008268192) (:by |root) (:id |BJmf8hgPuf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1520008271662) (:by |root) (:id |rJ44I2gDOf)
                          |r $ {} (:text |:error) (:type :leaf) (:at 1520008274090) (:by |root) (:id |Byx_8ngP_f)
                          |v $ {} (:text |op-data) (:type :leaf) (:at 1520008278311) (:by |root) (:id |BksL3lPuM)
                        :type :expr
                        :at 1520008266355
                        :by |root
                        :id |SJVf83xDdM
                    :type :expr
                    :at 1520008263125
                    :by |root
                    :id |HJbJ82gwdG
                  |T $ {} (:author |root) (:text |case-default) (:time 1499755354983) (:type :leaf) (:at 1629278822685) (:by |rJG4IHzWf) (:id |ry61gjOFqpH-)
                  |j $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyAylout56Hb)
                  |l $ {}
                    :data $ {}
                      |D $ {} (:text |do) (:type :leaf) (:at 1629278825044) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1629278827298) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"Unknown op:") (:type :leaf) (:at 1629278833970) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1629278836037) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629278825339
                        :by |rJG4IHzWf
                      |T $ {} (:text |store) (:type :leaf) (:at 1629278824192) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629278824443
                    :by |rJG4IHzWf
                  |n $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |:states) (:time 1507399855618) (:type :leaf) (:id |HJxX2OqUh-)
                      |j $ {} (:author |root)
                        :data $ {}
                          |T $ {} (:author |root) (:text |update-states) (:time 1507399857991) (:type :leaf) (:at 1629278840650) (:by |rJG4IHzWf) (:id |rylOn_5I2Z)
                          |j $ {} (:author |root) (:text |store) (:time 1507399858922) (:type :leaf) (:id |ByE92uq82b)
                          |r $ {} (:author |root) (:text |op-data) (:time 1507399860888) (:type :leaf) (:id |HJNh3uqL2W)
                        :time 1507399856471
                        :type :expr
                        :id |Sk-_hdqU2b
                    :time 1507399852251
                    :type :expr
                    :id |ryNh_5L3b
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359657160) (:type :leaf) (:id |S1lxeout56HW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |assoc) (:time 1512359666053) (:type :leaf) (:id |BkfgesdF9TH-)
                          |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |HJQeloOt5TrZ)
                          |r $ {} (:author |rJG4IHzWf) (:text |:content) (:time 1512359660859) (:type :leaf) (:id |HkNexodK9Tr-)
                          |v $ {} (:author |rJG4IHzWf) (:text |op-data) (:time 1512359663126) (:type :leaf) (:id |B1eIlwHzbz)
                        :time 1499755354983
                        :type :expr
                        :id |SJ-gxidtcTrZ
                    :time 1499755354983
                    :type :expr
                    :id |S1kexiuF9arZ
                  |s $ {}
                    :data $ {}
                      |T $ {} (:author |rJG4IHzWf) (:text |:page) (:time 1512359657160) (:type :leaf) (:at 1519976045411) (:by |root) (:id |S1lxeout56HW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:author |rJG4IHzWf) (:text |assoc) (:time 1512359666053) (:type :leaf) (:id |BkfgesdF9TH-)
                          |j $ {} (:author |root) (:text |store) (:time 1499755354983) (:type :leaf) (:id |HJQeloOt5TrZ)
                          |r $ {} (:author |rJG4IHzWf) (:text |:page) (:time 1512359660859) (:type :leaf) (:at 1519976047580) (:by |root) (:id |HkNexodK9Tr-)
                          |v $ {} (:author |rJG4IHzWf) (:text |op-data) (:time 1512359663126) (:type :leaf) (:id |B1eIlwHzbz)
                        :time 1499755354983
                        :type :expr
                        :id |SJ-gxidtcTrZ
                    :time 1499755354983
                    :type :expr
                    :id |S14_Cd8df
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root) (:id |SkNl1ac8zleaf)
                      |j $ {} (:text |op-data) (:type :leaf) (:at 1518157553355) (:by |root) (:id |SJzueyp5Iz)
                    :type :expr
                    :at 1518157547521
                    :by |root
                    :id |SkNl1ac8z
                :time 1499755354983
                :type :expr
                :id |BJ2yxjOKqpHb
            :time 1499755354983
            :type :expr
            :id |SkS1lout5aBb
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |HJ41lsuY5pSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |SkG1lo_t9pHZ)
            |j $ {} (:author |root) (:text |app.updater) (:time 1499755354983) (:type :leaf) (:id |B17kxjdFq6r-)
            |r $ {} (:author |root)
              :data $ {}
                |T $ {} (:author |root) (:text |:require) (:time 1507399864640) (:type :leaf) (:id |H1xR2d5Uh-)
                |j $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399865654) (:type :leaf) (:id |rkf-6u9InW)
                    |j $ {} (:author |root) (:text |respo.cursor) (:time 1507399873143) (:type :leaf) (:id |Hkefpu983W)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399874041) (:type :leaf) (:id |rkrYaO5UnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399874938) (:type :leaf) (:id |BJBqpOq8hZ)
                        |j $ {} (:author |root) (:text |update-states) (:time 1507399875675) (:type :leaf) (:at 1629278851836) (:by |rJG4IHzWf) (:id |rJbi6_c83-)
                      :time 1507399874214
                      :type :expr
                      :id |BkUcpdc83b
                  :time 1507399864883
                  :type :expr
                  :id |r17bT_cLnZ
              :time 1507399862664
              :type :expr
              :id |rykTu9L2Z
          :time 1499755354983
          :type :expr
          :id |B1Z1gjdFqaBZ
      |app.comp.edn-grid $ {}
        :defs $ {}
          |comp-data $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520097756822) (:by |root) (:id |ryW6lRlvuz)
              |j $ {} (:text |comp-data) (:type :leaf) (:at 1520097755323) (:by |root) (:id |HJGalRxvuM)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |states) (:type :leaf) (:at 1520098374971) (:by |root) (:id |SJeRH3L_dM)
                  |T $ {} (:text |data) (:type :leaf) (:at 1520008694524) (:by |root) (:id |SyZ0lCxDdM)
                :type :expr
                :at 1520008692809
                :by |root
                :id |B1XTlRgDdG
              |v $ {}
                :data $ {}
                  |yD $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |keyword?) (:type :leaf) (:at 1520010450416) (:by |root) (:id |SyrA4Zv_zleaf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520010451248) (:by |root) (:id |SyiCEZDdM)
                        :type :expr
                        :at 1520010448204
                        :by |root
                        :id |r1_0VbPuM
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520010453507) (:by |root) (:id |SJhAEbvdM)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1579107545468) (:by |rJG4IHzWf) (:id |SyZKDZw_G)
                              |T $ {} (:text |data) (:type :leaf) (:at 1520010454180) (:by |root) (:id |r1AAVbDOz)
                            :type :expr
                            :at 1520011128261
                            :by |root
                            :id |BkgtwbvOf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520010455874) (:by |root) (:id |Sy-k1rZw_G)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520010457194) (:by |root) (:id |SJzx1r-DOf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1520010461661) (:by |root) (:id |Hkr-Jr-wdf)
                                      |j $ {} (:text |240) (:type :leaf) (:at 1520010463881) (:by |root) (:id |S1bIyrWPOM)
                                      |r $ {} (:text |80) (:type :leaf) (:at 1520010464396) (:by |root) (:id |S1eOJHWv_f)
                                      |v $ {} (:text |76) (:type :leaf) (:at 1520012050919) (:by |root) (:id |HkYkBbwOz)
                                    :type :expr
                                    :at 1520010461250
                                    :by |root
                                    :id |ryWrkHbw_M
                                :type :expr
                                :at 1520010456342
                                :by |root
                                :id |SJmgkSZwdG
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:margin) (:type :leaf) (:at 1579108322660) (:by |rJG4IHzWf) (:id |72exjWKje)
                                  |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1579108322660) (:by |rJG4IHzWf) (:id |LOEi7rH6D)
                                :type :expr
                                :at 1579108322660
                                :by |rJG4IHzWf
                                :id |ka34Ukr1Q
                            :type :expr
                            :at 1520010455532
                            :by |root
                            :id |H1gyHWvuM
                        :type :expr
                        :at 1520010451998
                        :by |root
                        :id |r1x3CNbvOM
                    :type :expr
                    :at 1520010444709
                    :by |root
                    :id |SyrA4Zv_z
                  |yL $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |nil?) (:type :leaf) (:at 1520011349777) (:by |root) (:id |SyxoUO-vdMleaf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520011350374) (:by |root) (:id |SkWRUuWvdG)
                        :type :expr
                        :at 1520011348137
                        :by |root
                        :id |r1h8uZP_f
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520011351311) (:by |root) (:id |S1JvO-P_f)
                          |j $ {} (:text "|\"nil") (:type :leaf) (:at 1579107552465) (:by |rJG4IHzWf) (:id |rkWYPdbw_f)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520011363765) (:by |root) (:id |HJ-jPu-wOz)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520011365239) (:by |root) (:id |H1ZhPdbwdG)
                                  |j $ {} (:text |:red) (:type :leaf) (:at 1520011366495) (:by |root) (:id |BkETwuWPOG)
                                :type :expr
                                :at 1520011364107
                                :by |root
                                :id |HkGhv_bP_G
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:margin) (:type :leaf) (:at 1579108325380) (:by |rJG4IHzWf) (:id |hGGMdOUr6)
                                  |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1579108325380) (:by |rJG4IHzWf) (:id |1XoUqiuoG)
                                :type :expr
                                :at 1579108325380
                                :by |rJG4IHzWf
                                :id |_7Lo-uInn
                            :type :expr
                            :at 1520011363419
                            :by |root
                            :id |BJMoDu-w_M
                        :type :expr
                        :at 1520011350938
                        :by |root
                        :id |SJeyvubDdM
                    :type :expr
                    :at 1520011347042
                    :by |root
                    :id |SyxoUO-vdM
                  |yP $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |symbol?) (:type :leaf) (:at 1520011919548) (:by |root) (:id |HygVcqWPuMleaf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520011920528) (:by |root) (:id |rkgd5cZvuG)
                        :type :expr
                        :at 1520011917344
                        :by |root
                        :id |rJr5q-vuM
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520011921507) (:by |root) (:id |ByZFq5WP_fleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |str) (:type :leaf) (:at 1579107555066) (:by |rJG4IHzWf) (:id |rkqq9-wdf)
                              |j $ {} (:text |data) (:type :leaf) (:at 1520011925849) (:by |root) (:id |Bk4aq9bDuG)
                            :type :expr
                            :at 1520011924003
                            :by |root
                            :id |Hyp3Tl__M
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520011931963) (:by |root) (:id |BylZi5-vuf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520011935350) (:by |root) (:id |SJxVo9-D_f)
                                  |j $ {} (:text |:red) (:type :leaf) (:at 1520011943765) (:by |root) (:id |Hk_i9-wdG)
                                :type :expr
                                :at 1520011932441
                                :by |root
                                :id |rkZVsq-v_M
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:margin) (:type :leaf) (:at 1579108326707) (:by |rJG4IHzWf) (:id |J2y3noReU)
                                  |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1579108326707) (:by |rJG4IHzWf) (:id |iDMaNIcz7)
                                :type :expr
                                :at 1579108326707
                                :by |rJG4IHzWf
                                :id |E78K1oE1w
                            :type :expr
                            :at 1520011930487
                            :by |root
                            :id |BJGjcbDdf
                        :type :expr
                        :at 1520011920847
                        :by |root
                        :id |ByZFq5WP_f
                    :type :expr
                    :at 1520011916322
                    :by |root
                    :id |HygVcqWPuM
                  |yT $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |or) (:type :leaf) (:at 1520008785682) (:by |root) (:id |By-tLReDdz)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |=) (:type :leaf) (:at 1520008786472) (:by |root) (:id |SkZcLCewuG)
                              |j $ {} (:text |true) (:type :leaf) (:at 1520008788867) (:by |root) (:id |BJsIAxv_f)
                              |r $ {} (:text |data) (:type :leaf) (:at 1520008789754) (:by |root) (:id |Sk-a8RxDOG)
                            :type :expr
                            :at 1520008786342
                            :by |root
                            :id |B1z9IAewuz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |=) (:type :leaf) (:at 1520008790902) (:by |root) (:id |ryzRL0xP_M)
                              |j $ {} (:text |false) (:type :leaf) (:at 1520008791825) (:by |root) (:id |HklkPAxv_G)
                              |r $ {} (:text |data) (:type :leaf) (:at 1520008792447) (:by |root) (:id |H1MlvAevdG)
                            :type :expr
                            :at 1520008790402
                            :by |root
                            :id |BkmRU0eD_f
                        :type :expr
                        :at 1520008772497
                        :by |root
                        :id |Syb3rRlD_f
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520008909559) (:by |root) (:id |BJHR0lw_zleaf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1579107563022) (:by |rJG4IHzWf) (:id |BJvtF-P_M)
                              |T $ {} (:text |data) (:type :leaf) (:at 1520008910478) (:by |root) (:id |HJgURCxvuz)
                            :type :expr
                            :at 1520011645281
                            :by |root
                            :id |SyxrtKZDOz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520008911928) (:by |root) (:id |BJP0RePuM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520008913368) (:by |root) (:id |rkl_C0lPdM)
                                  |j $ {} (:text |:blue) (:type :leaf) (:at 1520008914842) (:by |root) (:id |S1BYCRxw_M)
                                :type :expr
                                :at 1520008912315
                                :by |root
                                :id |ryZdARePOM
                            :type :expr
                            :at 1520008910810
                            :by |root
                            :id |rygDCCxwdG
                        :type :expr
                        :at 1520008908632
                        :by |root
                        :id |BJHR0lw_z
                    :type :expr
                    :at 1520008772049
                    :by |root
                    :id |rJl3HRgwuf
                  |yj $ {}
                    :data $ {}
                      |D $ {} (:text |:else) (:type :leaf) (:at 1520011957712) (:by |root) (:id |Hyq29ZvOz)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520008804483) (:by |root) (:id |SknDAeDdfleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |pr-str) (:type :leaf) (:at 1520008806491) (:by |root) (:id |SkTv0eDdM)
                              |j $ {} (:text |data) (:type :leaf) (:at 1520008807121) (:by |root) (:id |HkyOAgv_G)
                            :type :expr
                            :at 1520008805408
                            :by |root
                            :id |HkxTwRxDdG
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520008809023) (:by |root) (:id |B1eluAeDOM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520008813008) (:by |root) (:id |Hyf-_0xDuz)
                                  |j $ {} (:text |:red) (:type :leaf) (:at 1520008813672) (:by |root) (:id |r1ES_AxPdz)
                                :type :expr
                                :at 1520008809962
                                :by |root
                                :id |HJGd0eDuM
                            :type :expr
                            :at 1520008808676
                            :by |root
                            :id |Bk-_AewOf
                        :type :expr
                        :at 1520008803819
                        :by |root
                        :id |SknDAeDdf
                    :type :expr
                    :at 1520011953329
                    :by |root
                    :id |S1-Yn9Zwdf
                  |T $ {} (:text |cond) (:type :leaf) (:at 1520008718885) (:by |root) (:id |ByZkWAlD_zleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |map?) (:type :leaf) (:at 1520008743096) (:by |root) (:id |B17wfAxvdM)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520008744793) (:by |root) (:id |r1Qy4CxP_f)
                        :type :expr
                        :at 1520008739490
                        :by |root
                        :id |SJgi7RxP_M
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |comp-map) (:type :leaf) (:at 1520008819515) (:by |root) (:id |H1eK_AlPOM)
                          |j $ {} (:text |states) (:type :leaf) (:at 1520098569616) (:by |root) (:id |r1WgMa8uuG)
                          |r $ {} (:text |data) (:type :leaf) (:at 1520098570447) (:by |root) (:id |HygMM68OOG)
                        :type :expr
                        :at 1520098567795
                        :by |root
                        :id |HJleMTUddG
                    :type :expr
                    :at 1520008719653
                    :by |root
                    :id |ByOMCewuM
                  |v $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |set?) (:type :leaf) (:at 1520008753335) (:by |root) (:id |SJlDECgDuGleaf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520008754887) (:by |root) (:id |HJc4AlvuM)
                        :type :expr
                        :at 1520008751350
                        :by |root
                        :id |B1ZPNCxPdM
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |comp-set) (:type :leaf) (:at 1520008870278) (:by |root) (:id |S1easRgDOG)
                          |b $ {} (:text |states) (:type :leaf) (:at 1520098382691) (:by |root) (:id |SyxLU3IduM)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520008871602) (:by |root) (:id |Hy1nRevOM)
                        :type :expr
                        :at 1520008867639
                        :by |root
                        :id |SJno0xPdz
                    :type :expr
                    :at 1520008750850
                    :by |root
                    :id |SJlDECgDuG
                  |w $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |list?) (:type :leaf) (:at 1520012376961) (:by |root) (:id |SJlDECgDuGleaf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520008754887) (:by |root) (:id |HJc4AlvuM)
                        :type :expr
                        :at 1520008751350
                        :by |root
                        :id |B1ZPNCxPdM
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |comp-list) (:type :leaf) (:at 1520012378497) (:by |root) (:id |S1easRgDOG)
                          |b $ {} (:text |states) (:type :leaf) (:at 1520098384604) (:by |root) (:id |H1gOL28_dG)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520008871602) (:by |root) (:id |Hy1nRevOM)
                        :type :expr
                        :at 1520008867639
                        :by |root
                        :id |SJno0xPdz
                    :type :expr
                    :at 1520008750850
                    :by |root
                    :id |rkyPn-wdz
                  |x $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |string?) (:type :leaf) (:at 1520008763634) (:by |root) (:id |BJb240gPOzleaf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520008764306) (:by |root) (:id |HygEBRevuf)
                        :type :expr
                        :at 1520008756979
                        :by |root
                        :id |HkpEAlvuG
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520008886980) (:by |root) (:id |Sy0n0lP_M)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |pr-str) (:type :leaf) (:at 1579107543666) (:by |rJG4IHzWf) (:id |3lcrYb1xU)
                              |T $ {} (:text |data) (:type :leaf) (:at 1520008892418) (:by |root) (:id |H1zQTRxPuM)
                            :type :expr
                            :at 1579107540485
                            :by |rJG4IHzWf
                            :id |qs1iYpGb
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520010480381) (:by |root) (:id |BylBpRxvdf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520010481724) (:by |root) (:id |ByKxHWD_G)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1520010482489) (:by |root) (:id |rkf9lr-w_G)
                                      |j $ {} (:text |130) (:type :leaf) (:at 1579108951828) (:by |rJG4IHzWf) (:id |H1oxrbv_G)
                                      |r $ {} (:text |80) (:type :leaf) (:at 1520010484284) (:by |root) (:id |HyxhgSbvOf)
                                      |v $ {} (:text |40) (:type :leaf) (:at 1579108941982) (:by |rJG4IHzWf) (:id |ByQ2eSWDOM)
                                    :type :expr
                                    :at 1520010481978
                                    :by |root
                                    :id |HkQqgH-wOM
                                :type :expr
                                :at 1520010480931
                                :by |root
                                :id |SJeYxrWPOG
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:margin) (:type :leaf) (:at 1579108319220) (:by |rJG4IHzWf) (:id |XUYyqAtcZ)
                                  |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1579108319220) (:by |rJG4IHzWf) (:id |ndBr5i_2T)
                                :type :expr
                                :at 1579108319220
                                :by |rJG4IHzWf
                                :id |kfYsFuG3P
                            :type :expr
                            :at 1520010480014
                            :by |root
                            :id |BJzdgr-wuz
                        :type :expr
                        :at 1520008885785
                        :by |root
                        :id |Hkg0nCgvdG
                    :type :expr
                    :at 1520008756471
                    :by |root
                    :id |BJb240gPOz
                  |y $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |number?) (:type :leaf) (:at 1520008769864) (:by |root) (:id |HJWHS0evuGleaf)
                          |j $ {} (:text |data) (:type :leaf) (:at 1520008770638) (:by |root) (:id |SJMqrAewdG)
                        :type :expr
                        :at 1520008766042
                        :by |root
                        :id |SkUrAgw_G
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520008897574) (:by |root) (:id |rJYTRlDdf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1579107531648) (:by |rJG4IHzWf) (:id |rkyqYZvdM)
                              |T $ {} (:text |data) (:type :leaf) (:at 1520008900111) (:by |root) (:id |rkW5a0gP_z)
                            :type :expr
                            :at 1520011654383
                            :by |root
                            :id |B1gRYKZwOz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520008902508) (:by |root) (:id |S17h6RxPdz)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1520008904537) (:by |root) (:id |Hk1AAxPOM)
                                  |j $ {} (:text |:blue) (:type :leaf) (:at 1520008905852) (:by |root) (:id |Hyx-00xP_M)
                                :type :expr
                                :at 1520008902859
                                :by |root
                                :id |SJgkAAgvdf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:margin) (:type :leaf) (:at 1579108313119) (:by |rJG4IHzWf) (:id |Qu_InOhm)
                                  |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1579108316925) (:by |rJG4IHzWf) (:id |XJCXzxN9f)
                                :type :expr
                                :at 1579108312386
                                :by |rJG4IHzWf
                                :id |ZWt-XOwbK
                            :type :expr
                            :at 1520008901249
                            :by |root
                            :id |SkTpRxD_G
                        :type :expr
                        :at 1520008897067
                        :by |root
                        :id |H1lF6AlPOM
                    :type :expr
                    :at 1520008765321
                    :by |root
                    :id |HJWHS0evuG
                :type :expr
                :at 1520008695502
                :by |root
                :id |ByZkWAlD_z
            :type :expr
            :at 1520008692809
            :by |root
            :id |SkepgRlDOM
          |comp-list $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520012383366) (:by |root) (:id |HkW4DhWPdG)
              |j $ {} (:text |comp-list) (:type :leaf) (:at 1520012379746) (:by |root) (:id |HyGNDhbv_z)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |states) (:type :leaf) (:at 1528131706043) (:by |root) (:id |rJGYxxmgQ)
                  |T $ {} (:text |data) (:type :leaf) (:at 1520012384899) (:by |root) (:id |r1-uP3ZDOz)
                :type :expr
                :at 1520012379746
                :by |root
                :id |H1XVD2-vdz
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1579108645461) (:by |rJG4IHzWf) (:id |yBWrPbjq)
                  |L $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1629279149561) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1629279151349) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1629279152225) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629279149779
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1629279147953
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1579108648987) (:by |rJG4IHzWf) (:id |yIWiIn__U)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1579108649630) (:by |rJG4IHzWf) (:id |iKZSDjump)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1579108651313) (:by |rJG4IHzWf) (:id |lJs_mHdwo)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1579108652443) (:by |rJG4IHzWf) (:id |6bT0I3nGl)
                                :type :expr
                                :at 1579108650727
                                :by |rJG4IHzWf
                                :id |12Rg4vIge
                              |r $ {} (:text |false) (:type :leaf) (:at 1579108654797) (:by |rJG4IHzWf) (:id |_CHKdTNTe)
                            :type :expr
                            :at 1579108649233
                            :by |rJG4IHzWf
                            :id |eTK8cZth
                        :type :expr
                        :at 1579108646162
                        :by |rJG4IHzWf
                        :id |YsCcLkCz
                    :type :expr
                    :at 1579108645660
                    :by |rJG4IHzWf
                    :id |OwJ2Gv1r3
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1520011002918) (:by |root) (:id |SklzbD-POz)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520011005605) (:by |root) (:id |S1f7ZDZwOM)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520011070997) (:by |root) (:id |BJgQBwbvuf)
                              |j $ {} (:text |ui/row) (:type :leaf) (:at 1520012691947) (:by |root) (:id |BkicaWwuG)
                            :type :expr
                            :at 1520011067247
                            :by |root
                            :id |SybXrw-PuM
                        :type :expr
                        :at 1520011003198
                        :by |root
                        :id |HJQQ-vZD_f
                      |N $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1520012693946) (:by |root) (:id |rkAqa-wOz)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520012644220) (:by |root) (:id |HJ-3PabP_z)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1520012646356) (:by |root) (:id |BygTvabvuG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520012647666) (:by |root) (:id |rJ8APpZvOf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1579108832021) (:by |rJG4IHzWf) (:id |UR5wRoDQn)
                                          |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108832021) (:by |rJG4IHzWf) (:id |XFGlB2TN9)
                                        :type :expr
                                        :at 1579108832021
                                        :by |rJG4IHzWf
                                        :id |MlbGHYknl
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1579108698928) (:by |rJG4IHzWf) (:id |cqYmkCcblleaf)
                                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1579108701092) (:by |rJG4IHzWf) (:id |AQmcU95c)
                                        :type :expr
                                        :at 1579108697521
                                        :by |rJG4IHzWf
                                        :id |cqYmkCcbl
                                    :type :expr
                                    :at 1520012647263
                                    :by |root
                                    :id |SklJdT-D_M
                                :type :expr
                                :at 1520012645582
                                :by |root
                                :id |S10wp-P_f
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1579108684055) (:by |rJG4IHzWf) (:id |uSG-kd5I5)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1579108684055) (:by |rJG4IHzWf) (:id |J4TcNyNnd)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1579108684055) (:by |rJG4IHzWf) (:id |V13MdkJjk)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1579108684055) (:by |rJG4IHzWf) (:id |MQkqcZWB5)
                                        :type :expr
                                        :at 1579108684055
                                        :by |rJG4IHzWf
                                        :id |VjJMur1pW
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1629279155086) (:by |rJG4IHzWf) (:id |K3YLzkV9C)
                                          |b $ {} (:text |cursor) (:type :leaf) (:at 1629279156747) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |not) (:type :leaf) (:at 1579108684055) (:by |rJG4IHzWf) (:id |H6Jep9I8k)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1579108684055) (:by |rJG4IHzWf) (:id |3IXKo137P)
                                            :type :expr
                                            :at 1579108684055
                                            :by |rJG4IHzWf
                                            :id |FVjoGf2bv
                                        :type :expr
                                        :at 1579108684055
                                        :by |rJG4IHzWf
                                        :id |McmKFplzh
                                    :type :expr
                                    :at 1579108684055
                                    :by |rJG4IHzWf
                                    :id |vg3NPcpwA
                                :type :expr
                                :at 1579108684055
                                :by |rJG4IHzWf
                                :id |1fc_LZMhB
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:inner-text) (:type :leaf) (:at 1579107511389) (:by |rJG4IHzWf) (:id |Xe1A8cJ6leaf)
                                  |j $ {} (:text "|\"()") (:type :leaf) (:at 1579107513081) (:by |rJG4IHzWf) (:id |Qokv0Jc5u)
                                :type :expr
                                :at 1579107509152
                                :by |rJG4IHzWf
                                :id |Xe1A8cJ6
                            :type :expr
                            :at 1520012643906
                            :by |root
                            :id |SkyipZw_z
                        :type :expr
                        :at 1520012693249
                        :by |root
                        :id |r1lTqabw_f
                      |P $ {}
                        :data $ {}
                          |D $ {} (:text |if) (:type :leaf) (:at 1579108668201) (:by |rJG4IHzWf) (:id |1IxmzqVG)
                          |L $ {} (:text |state) (:type :leaf) (:at 1579108670615) (:by |rJG4IHzWf) (:id |GMDD5W8Ye)
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |rACgNzW8C)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |JR5cYWQjX)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |xR00Hh4Hw)
                                      |j $ {} (:text |style-folded) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |Mlnmkn8FU)
                                    :type :expr
                                    :at 1579108671261
                                    :by |rJG4IHzWf
                                    :id |8Cj2v_DSK
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:on-click) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |VLE7jXwdT)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |K-ve5eIR5)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |ZDYBdmOkq)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |wFA2DnMfq)
                                            :type :expr
                                            :at 1579108671261
                                            :by |rJG4IHzWf
                                            :id |LU3pu3gTH
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |d!) (:type :leaf) (:at 1629279162242) (:by |rJG4IHzWf) (:id |dOw4pDtvLL)
                                              |b $ {} (:text |cursor) (:type :leaf) (:at 1629279163638) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |not) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |xq_UCly9G1)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |rueDR0VWvC)
                                                :type :expr
                                                :at 1579108671261
                                                :by |rJG4IHzWf
                                                :id |GcdoBPnD_d
                                            :type :expr
                                            :at 1579108671261
                                            :by |rJG4IHzWf
                                            :id |5BxPGUl_M4
                                        :type :expr
                                        :at 1579108671261
                                        :by |rJG4IHzWf
                                        :id |gSmuSOaYC
                                    :type :expr
                                    :at 1579108671261
                                    :by |rJG4IHzWf
                                    :id |IcXJdQ44c
                                :type :expr
                                :at 1579108671261
                                :by |rJG4IHzWf
                                :id |SnYk9IYpI
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |aMgdrmCrNV)
                                  |j $ {} (:text "|\"folded") (:type :leaf) (:at 1579108671261) (:by |rJG4IHzWf) (:id |dulu9j3_Y4)
                                :type :expr
                                :at 1579108671261
                                :by |rJG4IHzWf
                                :id |MIdZJrTRdz
                            :type :expr
                            :at 1579108671261
                            :by |rJG4IHzWf
                            :id |RjxY7ANkF
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |list->) (:type :leaf) (:at 1520011009031) (:by |root) (:id |BylDZDbvufleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520011010084) (:by |root) (:id |r1XFbDWDOf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1520012104890) (:by |root) (:id |r1gJUsZvdG)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1520012105481) (:by |root) (:id |SJ7b8o-DuM)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-left) (:type :leaf) (:at 1520012110156) (:by |root) (:id |B1zUjWDOz)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1520012111277) (:by |root) (:id |HJNLUoZwdG)
                                                  |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1520012114983) (:by |root) (:id |SkGDIiZDuM)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1520012116851) (:by |root) (:id |S1gh8jZwOM)
                                                      |j $ {} (:text |40) (:type :leaf) (:at 1520012400906) (:by |root) (:id |r1M6Is-D_z)
                                                      |r $ {} (:text |170) (:type :leaf) (:at 1520012274333) (:by |root) (:id |rkeAIoWvOz)
                                                      |v $ {} (:text |90) (:type :leaf) (:at 1520012153227) (:by |root) (:id |SyZywi-vdf)
                                                    :type :expr
                                                    :at 1520012116419
                                                    :by |root
                                                    :id |BkbhUobv_f
                                                :type :expr
                                                :at 1520012110457
                                                :by |root
                                                :id |SyS8Lj-D_G
                                            :type :expr
                                            :at 1520012105772
                                            :by |root
                                            :id |SkefLiWDdM
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1579108833436) (:by |rJG4IHzWf) (:id |8Ka6nZZKd)
                                              |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108833436) (:by |rJG4IHzWf) (:id |rahkqg7ON)
                                            :type :expr
                                            :at 1579108833436
                                            :by |rJG4IHzWf
                                            :id |MhclRvo1M
                                        :type :expr
                                        :at 1520012105119
                                        :by |root
                                        :id |BkNW8j-vdf
                                    :type :expr
                                    :at 1520012102966
                                    :by |root
                                    :id |Sk-1LjWw_f
                                :type :expr
                                :at 1520011009696
                                :by |root
                                :id |rkcZPbwdf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1629279136999) (:by |rJG4IHzWf) (:id |r1obPWPdz)
                                  |b $ {} (:text |data) (:type :leaf) (:at 1520011251934) (:by |root) (:id |S1WsgOWw_f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |map-indexed) (:type :leaf) (:at 1520011019668) (:by |root) (:id |HybMvWDOG)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1520011020492) (:by |root) (:id |B1-VfDbPdz)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |idx) (:type :leaf) (:at 1520011022827) (:by |root) (:id |BkrMvbwdG)
                                              |j $ {} (:text |child) (:type :leaf) (:at 1520011024938) (:by |root) (:id |SJdfP-wuG)
                                            :type :expr
                                            :at 1520011020800
                                            :by |root
                                            :id |HygBMPWwdM
                                          |r $ {}
                                            :data $ {}
                                              |D $ {} (:text |[]) (:type :leaf) (:at 1520011037644) (:by |root) (:id |BJN7P-POM)
                                              |T $ {} (:text |idx) (:type :leaf) (:at 1520011031091) (:by |root) (:id |ryiGDbwdMleaf)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |div) (:type :leaf) (:at 1520011991617) (:by |root) (:id |Hkeyyi-wOG)
                                                  |L $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520011992290) (:by |root) (:id |Byxekjbvdz)
                                                    :type :expr
                                                    :at 1520011991946
                                                    :by |root
                                                    :id |r1WxkoWv_f
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |comp-data) (:type :leaf) (:at 1520097798820) (:by |root) (:id |rkeCfOWPdz)
                                                      |b $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |>>) (:type :leaf) (:at 1629279142777) (:by |rJG4IHzWf)
                                                          |T $ {} (:text |states) (:type :leaf) (:at 1520098390670) (:by |root) (:id |S1eCLh8udz)
                                                          |j $ {} (:text |idx) (:type :leaf) (:at 1629279143553) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1629279141965
                                                        :by |rJG4IHzWf
                                                      |j $ {} (:text |child) (:type :leaf) (:at 1520011343080) (:by |root) (:id |BkLLO-Ddf)
                                                    :type :expr
                                                    :at 1520011286551
                                                    :by |root
                                                    :id |SJkXuWPOG
                                                :type :expr
                                                :at 1520011990773
                                                :by |root
                                                :id |SJJ1sWvOz
                                            :type :expr
                                            :at 1520011026831
                                            :by |root
                                            :id |ryiGDbwdM
                                        :type :expr
                                        :at 1520011020144
                                        :by |root
                                        :id |H1z4Mv-w_G
                                    :type :expr
                                    :at 1520011018248
                                    :by |root
                                    :id |HyMGfw-wOM
                                :type :expr
                                :at 1520011012182
                                :by |root
                                :id |H13WvZwdG
                            :type :expr
                            :at 1520011006962
                            :by |root
                            :id |BylDZDbvuf
                        :type :expr
                        :at 1579108666710
                        :by |rJG4IHzWf
                        :id |FgHsMW4JM
                    :type :expr
                    :at 1520011002064
                    :by |root
                    :id |Hkbb_2-wuz
                :type :expr
                :at 1579108644807
                :by |rJG4IHzWf
                :id |z-ZKoO7wP
            :type :expr
            :at 1520012379746
            :by |root
            :id |BkxNDnbwdz
          |comp-map $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520008827397) (:by |root) (:id |rJWlt0xPOz)
              |j $ {} (:text |comp-map) (:type :leaf) (:at 1520008823993) (:by |root) (:id |SJMgKAgwOM)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |states) (:type :leaf) (:at 1520098410622) (:by |root) (:id |B1Gu38udz)
                  |T $ {} (:text |data) (:type :leaf) (:at 1520008829235) (:by |root) (:id |BJSKAew_G)
                :type :expr
                :at 1520008823993
                :by |root
                :id |S17eKCxvdM
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1520098412117) (:by |root) (:id |r1Vu38_df)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1520098414127) (:by |root) (:id |HJXNu3Uuuf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1520098416714) (:by |root) (:id |B1VU_nLuOG)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1520098419224) (:by |root) (:id |BJ-tu2I_OM)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1520098420457) (:by |root) (:id |BJ2u3IO_G)
                                :type :expr
                                :at 1520098416951
                                :by |root
                                :id |B1GY_hUOdG
                              |r $ {} (:text |false) (:type :leaf) (:at 1520098424840) (:by |root) (:id |ryRd28__M)
                            :type :expr
                            :at 1520098414403
                            :by |root
                            :id |S1rLd3IddG
                        :type :expr
                        :at 1520098412521
                        :by |root
                        :id |BJBuhUduf
                    :type :expr
                    :at 1520098412354
                    :by |root
                    :id |rJE4_nUduM
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1520012545809) (:by |root) (:id |B1xtZTWD_z)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520012546465) (:by |root) (:id |HkfqbaZw_G)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520012634025) (:by |root) (:id |rJegvT-vuM)
                              |j $ {} (:text |ui/row) (:type :leaf) (:at 1520012636715) (:by |root) (:id |HkVGP6WvdM)
                            :type :expr
                            :at 1520012632262
                            :by |root
                            :id |rk-lwabwuf
                        :type :expr
                        :at 1520012546025
                        :by |root
                        :id |SJX5bTWDOz
                      |P $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1520012643635) (:by |root) (:id |HJg5PaZD_z)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520012644220) (:by |root) (:id |HJ-3PabP_z)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1520012646356) (:by |root) (:id |BygTvabvuG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520012647666) (:by |root) (:id |rJ8APpZvOf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1520012650371) (:by |root) (:id |r1lldTWDdM)
                                          |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108416079) (:by |rJG4IHzWf) (:id |Hkm_6WP_M)
                                        :type :expr
                                        :at 1520012648694
                                        :by |root
                                        :id |S1bOpWPdf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1520098703061) (:by |root) (:id |SyU968duGleaf)
                                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1520098704149) (:by |root) (:id |SJQP5TUdOf)
                                        :type :expr
                                        :at 1520098701783
                                        :by |root
                                        :id |SyU968duG
                                    :type :expr
                                    :at 1520012647263
                                    :by |root
                                    :id |SklJdT-D_M
                                :type :expr
                                :at 1520012645582
                                :by |root
                                :id |S10wp-P_f
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1520098440481) (:by |root) (:id |HJiYnLOufleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1520098442495) (:by |root) (:id |BJW5nL_Oz)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1520098443237) (:by |root) (:id |BJQcnUu_G)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1520098444088) (:by |root) (:id |BJzmqnU_OM)
                                          |r $ {} (:text |m!) (:type :leaf) (:at 1520098444912) (:by |root) (:id |Sy-45hI__M)
                                        :type :expr
                                        :at 1520098443028
                                        :by |root
                                        :id |rJeXc2Iu_f
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |m!) (:type :leaf) (:at 1520098446791) (:by |root) (:id |B1-S9nU_dGleaf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |not) (:type :leaf) (:at 1520098447871) (:by |root) (:id |rJxD9hUOdf)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1520098448576) (:by |root) (:id |Bkzu5hUOOG)
                                            :type :expr
                                            :at 1520098447413
                                            :by |root
                                            :id |S1bv9nLudf
                                        :type :expr
                                        :at 1520098445423
                                        :by |root
                                        :id |B1-S9nU_dG
                                    :type :expr
                                    :at 1520098440798
                                    :by |root
                                    :id |r1e-9nUuuM
                                :type :expr
                                :at 1520098435470
                                :by |root
                                :id |ByXcpUOOM
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:inner-text) (:type :leaf) (:at 1579107452821) (:by |rJG4IHzWf) (:id |QQSuc_77leaf)
                                  |j $ {} (:text "|\"{}") (:type :leaf) (:at 1579107454812) (:by |rJG4IHzWf) (:id |g7HqouWk)
                                :type :expr
                                :at 1579107443658
                                :by |rJG4IHzWf
                                :id |QQSuc_77
                            :type :expr
                            :at 1520012643906
                            :by |root
                            :id |SyGnPTZv_f
                        :type :expr
                        :at 1520012641828
                        :by |root
                        :id |SJcDpZvOf
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |if) (:type :leaf) (:at 1579108529059) (:by |rJG4IHzWf) (:id |2hWwTyLc)
                          |L $ {} (:text |state) (:type :leaf) (:at 1579108531753) (:by |rJG4IHzWf) (:id |rNvelxOL)
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1579108542298) (:by |rJG4IHzWf) (:id |uJK_2K6MW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1579108542298) (:by |rJG4IHzWf) (:id |KtAh3y7Oe)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1579108542298) (:by |rJG4IHzWf) (:id |oabEkvymm)
                                      |j $ {} (:text |style-folded) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |I1tREw7Ljb)
                                    :type :expr
                                    :at 1579108542298
                                    :by |rJG4IHzWf
                                    :id |-PFZ3MA54
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:on-click) (:type :leaf) (:at 1579108576871) (:by |rJG4IHzWf) (:id |7og_3M7qleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1579108579107) (:by |rJG4IHzWf) (:id |2fjGhskP8)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1579108579620) (:by |rJG4IHzWf) (:id |gyi5bYVpl)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1579108580383) (:by |rJG4IHzWf) (:id |W9ZjrzXxz)
                                              |r $ {} (:text |m!) (:type :leaf) (:at 1579108581101) (:by |rJG4IHzWf) (:id |t6rKw0yeY)
                                            :type :expr
                                            :at 1579108579377
                                            :by |rJG4IHzWf
                                            :id |3yfaR7_xt
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |m!) (:type :leaf) (:at 1579108589505) (:by |rJG4IHzWf) (:id |PSEuP42CN)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |not) (:type :leaf) (:at 1579108589505) (:by |rJG4IHzWf) (:id |b8UFJXU_s)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1579108589505) (:by |rJG4IHzWf) (:id |ZVrShufJt)
                                                :type :expr
                                                :at 1579108589505
                                                :by |rJG4IHzWf
                                                :id |GKiEQTV2j
                                            :type :expr
                                            :at 1579108589505
                                            :by |rJG4IHzWf
                                            :id |uj_DGeSIT
                                        :type :expr
                                        :at 1579108577472
                                        :by |rJG4IHzWf
                                        :id |VTwu_cgl
                                    :type :expr
                                    :at 1579108575284
                                    :by |rJG4IHzWf
                                    :id |7og_3M7q
                                :type :expr
                                :at 1579108542298
                                :by |rJG4IHzWf
                                :id |fJFyVz_sv
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1579108542298) (:by |rJG4IHzWf) (:id |oh0P3Yg4s)
                                  |j $ {} (:text "|\"folded") (:type :leaf) (:at 1579108557305) (:by |rJG4IHzWf) (:id |EKdsKPddO)
                                :type :expr
                                :at 1579108542298
                                :by |rJG4IHzWf
                                :id |bCAcVFOBq
                            :type :expr
                            :at 1579108542298
                            :by |rJG4IHzWf
                            :id |AqQjJXpqC
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |list->) (:type :leaf) (:at 1520010176041) (:by |root) (:id |rkI6X-POMleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520010177529) (:by |root) (:id |SyYamWDOz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1520010504758) (:by |root) (:id |rkeJGrZP_G)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1520010508430) (:by |root) (:id |HJWWfSWDOz)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:display) (:type :leaf) (:at 1520010512589) (:by |root) (:id |SJSMr-vuG)
                                              |j $ {} (:text |:grid) (:type :leaf) (:at 1520010513496) (:by |root) (:id |B1gFzHZPdM)
                                            :type :expr
                                            :at 1520010509394
                                            :by |root
                                            :id |BJxSMSWP_f
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:grid-template-columns) (:type :leaf) (:at 1520010555114) (:by |root) (:id |r1lqzrbvdGleaf)
                                              |j $ {} (:text "||1fr 100fr") (:type :leaf) (:at 1520010876865) (:by |root) (:id |rJNBHbDdf)
                                            :type :expr
                                            :at 1520010514396
                                            :by |root
                                            :id |r1lqzrbvdG
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:grid-gap) (:type :leaf) (:at 1520010564375) (:by |root) (:id |SyFHrWPOfleaf)
                                              |j $ {} (:text ||0px) (:type :leaf) (:at 1520012239235) (:by |root) (:id |HJpHBWvuM)
                                            :type :expr
                                            :at 1520010560705
                                            :by |root
                                            :id |SyFHrWPOf
                                          |y $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-left) (:type :leaf) (:at 1520010830709) (:by |root) (:id |Syg67L-wOfleaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1520010795878) (:by |root) (:id |SJlmNUbw_z)
                                                  |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1520010798984) (:by |root) (:id |BkzV4IWvuz)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1520010800911) (:by |root) (:id |SJe_VLWv_z)
                                                      |j $ {} (:text |200) (:type :leaf) (:at 1520012168526) (:by |root) (:id |HkfF4UZDuM)
                                                      |r $ {} (:text |80) (:type :leaf) (:at 1520012170936) (:by |root) (:id |BJqEIWP_G)
                                                      |v $ {} (:text |80) (:type :leaf) (:at 1520012175047) (:by |root) (:id |rJ-9EL-v_f)
                                                    :type :expr
                                                    :at 1520010800478
                                                    :by |root
                                                    :id |HkZONIbwOG
                                                :type :expr
                                                :at 1520010795359
                                                :by |root
                                                :id |rJWQNL-DdM
                                            :type :expr
                                            :at 1520010789030
                                            :by |root
                                            :id |rJGIUWv_f
                                        :type :expr
                                        :at 1520010504999
                                        :by |root
                                        :id |BJG-zrZv_G
                                    :type :expr
                                    :at 1520010503462
                                    :by |root
                                    :id |S1-1MS-Duf
                                :type :expr
                                :at 1520010177149
                                :by |root
                                :id |HJeKam-wuG
                              |r $ {}
                                :data $ {}
                                  |D $ {} (:text |&list:concat) (:type :leaf) (:at 1629279032393) (:by |rJG4IHzWf)
                                  |L $ {} (:text |&) (:type :leaf) (:at 1629279034207) (:by |rJG4IHzWf)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |->) (:type :leaf) (:at 1629279005753) (:by |rJG4IHzWf) (:id |HyW9TXZPOzleaf)
                                      |j $ {} (:text |data) (:type :leaf) (:at 1520010183232) (:by |root) (:id |HyyAXZPuM)
                                      |n $ {}
                                        :data $ {}
                                          |T $ {} (:text |.to-list) (:type :leaf) (:at 1629279463252) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1629279461686
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |map) (:type :leaf) (:at 1520010288453) (:by |root) (:id |SkON4bPdM)
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1520010184664) (:by |root) (:id |SJNkCQWDuG)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |pair) (:type :leaf) (:at 1629279051480) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1520010184948
                                                :by |root
                                                :id |BkMbCX-Ddf
                                              |r $ {}
                                                :data $ {}
                                                  |D $ {} (:text |let[]) (:type :leaf) (:at 1629279044411) (:by |rJG4IHzWf)
                                                  |L $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |k) (:type :leaf) (:at 1629279046719) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |child) (:type :leaf) (:at 1629279047488) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1629279045006
                                                    :by |rJG4IHzWf
                                                  |P $ {} (:text |pair) (:type :leaf) (:at 1629279048801) (:by |rJG4IHzWf)
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |[]) (:type :leaf) (:at 1520010222099) (:by |root) (:id |r1eZeNbwdzleaf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |[]) (:type :leaf) (:at 1520010223110) (:by |root) (:id |BJPxEbDuG)
                                                          |j $ {} (:text |k) (:type :leaf) (:at 1520010226847) (:by |root) (:id |ryxtxVZD_M)
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |div) (:type :leaf) (:at 1520010247299) (:by |root) (:id |rkAZ4bvdM)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520010247919) (:by |root) (:id |HkzyzVZw_f)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:style) (:type :leaf) (:at 1520010840997) (:by |root) (:id |Bylgv8WDOf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1520010841745) (:by |root) (:id |SJE-w8-wuz)
                                                                          |j $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1579108816542) (:by |rJG4IHzWf) (:id |DHsQ0-dWR)
                                                                              |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108816542) (:by |rJG4IHzWf) (:id |Yr7VhvGlp)
                                                                            :type :expr
                                                                            :at 1579108816542
                                                                            :by |rJG4IHzWf
                                                                            :id |wpqbqaxT6
                                                                          |r $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |:white-space) (:type :leaf) (:at 1520010895829) (:by |root) (:id |ryI98WDdMleaf)
                                                                              |j $ {} (:text |:nowrap) (:type :leaf) (:at 1520010897529) (:by |root) (:id |HJzOc8-P_M)
                                                                            :type :expr
                                                                            :at 1520010893776
                                                                            :by |root
                                                                            :id |ryI98WDdM
                                                                        :type :expr
                                                                        :at 1520010841265
                                                                        :by |root
                                                                        :id |B1rZP8-vuG
                                                                    :type :expr
                                                                    :at 1520010840287
                                                                    :by |root
                                                                    :id |ryZevUbD_M
                                                                :type :expr
                                                                :at 1520010247543
                                                                :by |root
                                                                :id |SklM4bv_G
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |comp-data) (:type :leaf) (:at 1520097783010) (:by |root) (:id |SyMzV-DuGleaf)
                                                                  |b $ {}
                                                                    :data $ {}
                                                                      |D $ {} (:text |>>) (:type :leaf) (:at 1629279060782) (:by |rJG4IHzWf)
                                                                      |T $ {} (:text |states) (:type :leaf) (:at 1520098546299) (:by |root) (:id |B1cxTU_uz)
                                                                      |j $ {} (:text |k) (:type :leaf) (:at 1629279061551) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1629279059842
                                                                    :by |rJG4IHzWf
                                                                  |j $ {} (:text |k) (:type :leaf) (:at 1520010250654) (:by |root) (:id |H1fGf4WP_z)
                                                                :type :expr
                                                                :at 1520010249519
                                                                :by |root
                                                                :id |SyMzV-DuG
                                                            :type :expr
                                                            :at 1520010245793
                                                            :by |root
                                                            :id |rke0WN-wdG
                                                        :type :expr
                                                        :at 1520010222775
                                                        :by |root
                                                        :id |BkgDeNbvdz
                                                      |r $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |let) (:type :leaf) (:at 1520098596759) (:by |root) (:id |SybnmaIO_M)
                                                          |L $ {}
                                                            :data $ {}
                                                              |T $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |path) (:type :leaf) (:at 1520098597642) (:by |root) (:id |Byfp7TU_uf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |D $ {} (:text |str) (:type :leaf) (:at 1520010235057) (:by |root) (:id |HyX-EZv_z)
                                                                      |T $ {} (:text |k) (:type :leaf) (:at 1520010233593) (:by |root) (:id |Sy-WbNZw_M)
                                                                      |j $ {} (:text ||-value) (:type :leaf) (:at 1520010240610) (:by |root) (:id |SkV-EbPuG)
                                                                    :type :expr
                                                                    :at 1520010233958
                                                                    :by |root
                                                                    :id |SJfAm6IOuz
                                                                :type :expr
                                                                :at 1520098597107
                                                                :by |root
                                                                :id |ByNp7pLuOz
                                                            :type :expr
                                                            :at 1520098596961
                                                            :by |root
                                                            :id |rJQa768__z
                                                          |T $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |[]) (:type :leaf) (:at 1520010232749) (:by |root) (:id |BJxlZ4WDuzleaf)
                                                              |f $ {} (:text |path) (:type :leaf) (:at 1520098595308) (:by |root) (:id |r19QpLddz)
                                                              |r $ {}
                                                                :data $ {}
                                                                  |D $ {} (:text |div) (:type :leaf) (:at 1520010921116) (:by |root) (:id |SJlg2L-vuM)
                                                                  |L $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520010921777) (:by |root) (:id |rJG-28ZP_z)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |:style) (:type :leaf) (:at 1520010923067) (:by |root) (:id |H1bzhL-POz)
                                                                          |j $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |{}) (:type :leaf) (:at 1520010925325) (:by |root) (:id |B1VX3LWDOf)
                                                                              |j $ {}
                                                                                :data $ {}
                                                                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1520010929165) (:by |root) (:id |ryO38WD_M)
                                                                                  |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108804652) (:by |rJG4IHzWf) (:id |HkSY28Zv_z)
                                                                                :type :expr
                                                                                :at 1520010925643
                                                                                :by |root
                                                                                :id |rkL3UWvOz
                                                                            :type :expr
                                                                            :at 1520010924613
                                                                            :by |root
                                                                            :id |SJxH3LZwdz
                                                                        :type :expr
                                                                        :at 1520010922360
                                                                        :by |root
                                                                        :id |BkfzhL-vOM
                                                                    :type :expr
                                                                    :at 1520010921423
                                                                    :by |root
                                                                    :id |Bkmb28bwdM
                                                                  |T $ {}
                                                                    :data $ {}
                                                                      |D $ {} (:text |or) (:type :leaf) (:at 1520010387199) (:by |root) (:id |HJqqVZwOf)
                                                                      |T $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |comp-data) (:type :leaf) (:at 1520097785712) (:by |root) (:id |SJg48N-wufleaf)
                                                                          |b $ {}
                                                                            :data $ {}
                                                                              |D $ {} (:text |>>) (:type :leaf) (:at 1629279066580) (:by |rJG4IHzWf)
                                                                              |T $ {} (:text |states) (:type :leaf) (:at 1520098537866) (:by |root) (:id |B1e-lTUduM)
                                                                              |j $ {} (:text |path) (:type :leaf) (:at 1629279068922) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1629279065911
                                                                            :by |rJG4IHzWf
                                                                          |j $ {} (:text |child) (:type :leaf) (:at 1520010319316) (:by |root) (:id |BJQULN-POM)
                                                                        :type :expr
                                                                        :at 1520010316300
                                                                        :by |root
                                                                        :id |SJg48N-wuf
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |D $ {} (:text |<>) (:type :leaf) (:at 1520010399980) (:by |root) (:id |HyHsV-P_M)
                                                                          |T $ {}
                                                                            :data $ {}
                                                                              |D $ {} (:text |str) (:type :leaf) (:at 1520010421199) (:by |root) (:id |r1T2N-vdG)
                                                                              |T $ {} (:text ||Special:) (:type :leaf) (:at 1520010426926) (:by |root) (:id |BJe3cNWPdf)
                                                                              |j $ {}
                                                                                :data $ {}
                                                                                  |T $ {} (:text |pr-str) (:type :leaf) (:at 1520010430690) (:by |root) (:id |SkeQaE-wOM)
                                                                                  |j $ {} (:text |child) (:type :leaf) (:at 1520010432339) (:by |root) (:id |r1uaVZw_f)
                                                                                :type :expr
                                                                                :at 1520010427677
                                                                                :by |root
                                                                                :id |r146E-wuG
                                                                            :type :expr
                                                                            :at 1520010420399
                                                                            :by |root
                                                                            :id |rJhhEbwOf
                                                                        :type :expr
                                                                        :at 1520010396107
                                                                        :by |root
                                                                        :id |ryEoEbPOf
                                                                    :type :expr
                                                                    :at 1520010385260
                                                                    :by |root
                                                                    :id |B1K5E-P_G
                                                                :type :expr
                                                                :at 1520010920049
                                                                :by |root
                                                                :id |ryl2I-Duz
                                                            :type :expr
                                                            :at 1520010232286
                                                            :by |root
                                                            :id |BJxlZ4WDuz
                                                        :type :expr
                                                        :at 1520098596160
                                                        :by |root
                                                        :id |Sye3m6Uuuz
                                                    :type :expr
                                                    :at 1520010217170
                                                    :by |root
                                                    :id |r1eZeNbwdz
                                                :type :expr
                                                :at 1629279042339
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1520010183582
                                            :by |root
                                            :id |HyxRQbP_M
                                        :type :expr
                                        :at 1520010287306
                                        :by |root
                                        :id |HywE4-P_M
                                    :type :expr
                                    :at 1520010178372
                                    :by |root
                                    :id |HyW9TXZPOz
                                :type :expr
                                :at 1629279027575
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1520010173987
                            :by |root
                            :id |rkI6X-POM
                        :type :expr
                        :at 1579108527847
                        :by |rJG4IHzWf
                        :id |EEtkRRu3
                    :type :expr
                    :at 1520012545053
                    :by |root
                    :id |rktbTbwOM
                :type :expr
                :at 1520098411501
                :by |root
                :id |HJzXOhL__M
            :type :expr
            :at 1520008823993
            :by |root
            :id |H1exYAxDOf
          |comp-set $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520008874502) (:by |root) (:id |Bk7gnCxwuf)
              |j $ {} (:text |comp-set) (:type :leaf) (:at 1520008872512) (:by |root) (:id |r1Ee2CxDOz)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |states) (:type :leaf) (:at 1520098396197) (:by |root) (:id |S1l7PhUOOf)
                  |T $ {} (:text |data) (:type :leaf) (:at 1520008876126) (:by |root) (:id |rk-Q3RlPdM)
                :type :expr
                :at 1520008872512
                :by |root
                :id |B1Hl3RlvdG
              |x $ {}
                :data $ {}
                  |D $ {} (:text |div) (:type :leaf) (:at 1520011002918) (:by |root) (:id |SklzbD-POz)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520011005605) (:by |root) (:id |S1f7ZDZwOM)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520011070997) (:by |root) (:id |BJgQBwbvuf)
                          |j $ {} (:text |ui/row) (:type :leaf) (:at 1520012679344) (:by |root) (:id |HylCt6bwuz)
                        :type :expr
                        :at 1520011067247
                        :by |root
                        :id |SybXrw-PuM
                    :type :expr
                    :at 1520011003198
                    :by |root
                    :id |HJQQ-vZD_f
                  |N $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1520012681327) (:by |root) (:id |rygbc6bvuz)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520012644220) (:by |root) (:id |HJ-3PabP_z)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520012646356) (:by |root) (:id |BygTvabvuG)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520012647666) (:by |root) (:id |rJ8APpZvOf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1579108838998) (:by |rJG4IHzWf) (:id |29nxdSLKQ)
                                      |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108838998) (:by |rJG4IHzWf) (:id |fIbb73-U8)
                                    :type :expr
                                    :at 1579108838998
                                    :by |rJG4IHzWf
                                    :id |oRHGY5h6u
                                :type :expr
                                :at 1520012647263
                                :by |root
                                :id |SklJdT-D_M
                            :type :expr
                            :at 1520012645582
                            :by |root
                            :id |S10wp-P_f
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:inner-text) (:type :leaf) (:at 1579107500315) (:by |rJG4IHzWf) (:id |h4JhvSK91leaf)
                              |j $ {} (:text "|\"#{}") (:type :leaf) (:at 1579107502280) (:by |rJG4IHzWf) (:id |A15b8nYO_)
                            :type :expr
                            :at 1579107498286
                            :by |rJG4IHzWf
                            :id |h4JhvSK91
                        :type :expr
                        :at 1520012643906
                        :by |root
                        :id |BylHqp-wOf
                    :type :expr
                    :at 1520012680640
                    :by |root
                    :id |SyW9abwuf
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |list->) (:type :leaf) (:at 1520011009031) (:by |root) (:id |BylDZDbvufleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520011010084) (:by |root) (:id |r1XFbDWDOf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520012104890) (:by |root) (:id |r1gJUsZvdG)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520012105481) (:by |root) (:id |SJ7b8o-DuM)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:border-left) (:type :leaf) (:at 1520012110156) (:by |root) (:id |B1zUjWDOz)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1520012111277) (:by |root) (:id |HJNLUoZwdG)
                                          |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1520012114983) (:by |root) (:id |SkGDIiZDuM)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1520012116851) (:by |root) (:id |S1gh8jZwOM)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1520012118187) (:by |root) (:id |r1M6Is-D_z)
                                              |r $ {} (:text |170) (:type :leaf) (:at 1520012274333) (:by |root) (:id |rkeAIoWvOz)
                                              |v $ {} (:text |90) (:type :leaf) (:at 1520012153227) (:by |root) (:id |SyZywi-vdf)
                                            :type :expr
                                            :at 1520012116419
                                            :by |root
                                            :id |BkbhUobv_f
                                        :type :expr
                                        :at 1520012110457
                                        :by |root
                                        :id |SyS8Lj-D_G
                                    :type :expr
                                    :at 1520012105772
                                    :by |root
                                    :id |SkefLiWDdM
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1579108840171) (:by |rJG4IHzWf) (:id |yBxQovYh-)
                                      |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108840171) (:by |rJG4IHzWf) (:id |v4rnJ23HA)
                                    :type :expr
                                    :at 1579108840171
                                    :by |rJG4IHzWf
                                    :id |0AxZwNJr3
                                :type :expr
                                :at 1520012105119
                                :by |root
                                :id |BkNW8j-vdf
                            :type :expr
                            :at 1520012102966
                            :by |root
                            :id |Sk-1LjWw_f
                        :type :expr
                        :at 1520011009696
                        :by |root
                        :id |rkcZPbwdf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1629279118733) (:by |rJG4IHzWf) (:id |r1obPWPdz)
                          |b $ {} (:text |data) (:type :leaf) (:at 1520011251934) (:by |root) (:id |S1WsgOWw_f)
                          |f $ {}
                            :data $ {}
                              |T $ {} (:text |.to-list) (:type :leaf) (:at 1629279123091) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629279120133
                            :by |rJG4IHzWf
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |map-indexed) (:type :leaf) (:at 1520011019668) (:by |root) (:id |HybMvWDOG)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1520011020492) (:by |root) (:id |B1-VfDbPdz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |idx) (:type :leaf) (:at 1520011022827) (:by |root) (:id |BkrMvbwdG)
                                      |j $ {} (:text |child) (:type :leaf) (:at 1520011024938) (:by |root) (:id |SJdfP-wuG)
                                    :type :expr
                                    :at 1520011020800
                                    :by |root
                                    :id |HygBMPWwdM
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |[]) (:type :leaf) (:at 1520011037644) (:by |root) (:id |BJN7P-POM)
                                      |T $ {} (:text |idx) (:type :leaf) (:at 1520011031091) (:by |root) (:id |ryiGDbwdMleaf)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |div) (:type :leaf) (:at 1520011991617) (:by |root) (:id |Hkeyyi-wOG)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1520011992290) (:by |root) (:id |Byxekjbvdz)
                                            :type :expr
                                            :at 1520011991946
                                            :by |root
                                            :id |r1WxkoWv_f
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |comp-data) (:type :leaf) (:at 1520097793880) (:by |root) (:id |rkeCfOWPdz)
                                              |b $ {}
                                                :data $ {}
                                                  |D $ {} (:text |>>) (:type :leaf) (:at 1629279130406) (:by |rJG4IHzWf)
                                                  |T $ {} (:text |states) (:type :leaf) (:at 1520098398096) (:by |root) (:id |rkgBDhI__M)
                                                  |j $ {} (:text |idx) (:type :leaf) (:at 1629279131260) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1629279129719
                                                :by |rJG4IHzWf
                                              |j $ {} (:text |child) (:type :leaf) (:at 1520011343080) (:by |root) (:id |BkLLO-Ddf)
                                            :type :expr
                                            :at 1520011286551
                                            :by |root
                                            :id |SJkXuWPOG
                                        :type :expr
                                        :at 1520011990773
                                        :by |root
                                        :id |SJJ1sWvOz
                                    :type :expr
                                    :at 1520011026831
                                    :by |root
                                    :id |ryiGDbwdM
                                :type :expr
                                :at 1520011020144
                                :by |root
                                :id |H1z4Mv-w_G
                            :type :expr
                            :at 1520011018248
                            :by |root
                            :id |HyMGfw-wOM
                        :type :expr
                        :at 1520011012182
                        :by |root
                        :id |H13WvZwdG
                    :type :expr
                    :at 1520011006962
                    :by |root
                    :id |BylDZDbvuf
                :type :expr
                :at 1520011002064
                :by |root
                :id |ry-lh-vdf
            :type :expr
            :at 1520008872512
            :by |root
            :id |B1Gg3Rxw_f
          |comp-vector $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520008852980) (:by |root) (:id |BJ-jqAeDdM)
              |j $ {} (:text |comp-vector) (:type :leaf) (:at 1520008850821) (:by |root) (:id |rJMo50ewuf)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |states) (:type :leaf) (:at 1520098403262) (:by |root) (:id |H1sv3UO_f)
                  |T $ {} (:text |data) (:type :leaf) (:at 1520008855333) (:by |root) (:id |rkyjCePOG)
                :type :expr
                :at 1520008850821
                :by |root
                :id |SJ7oqRgD_G
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1579108722693) (:by |rJG4IHzWf) (:id |BWysxzKSv)
                  |L $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1629279090285) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |:cursor) (:type :leaf) (:at 1629279095555) (:by |rJG4IHzWf)
                              |T $ {} (:text |states) (:type :leaf) (:at 1629279091691) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629279090568
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1629279089426
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1579108723736) (:by |rJG4IHzWf) (:id |hyYywwkA5)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1579108724858) (:by |rJG4IHzWf) (:id |qXGZc6IDb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1579108726727) (:by |rJG4IHzWf) (:id |NMMj-U8g)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1579108727631) (:by |rJG4IHzWf) (:id |B1_pFG3Ri)
                                :type :expr
                                :at 1579108725300
                                :by |rJG4IHzWf
                                :id |43jSFGAnm
                              |r $ {} (:text |false) (:type :leaf) (:at 1579108732243) (:by |rJG4IHzWf) (:id |dQezdo0Z6)
                            :type :expr
                            :at 1579108724223
                            :by |rJG4IHzWf
                            :id |872MW7DvI
                        :type :expr
                        :at 1579108723116
                        :by |rJG4IHzWf
                        :id |cIJUynfV
                    :type :expr
                    :at 1579108722946
                    :by |rJG4IHzWf
                    :id |e3IKip-xF
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1520011002918) (:by |root) (:id |SklzbD-POz)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520011005605) (:by |root) (:id |S1f7ZDZwOM)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520011070997) (:by |root) (:id |BJgQBwbvuf)
                              |j $ {} (:text |ui/row) (:type :leaf) (:at 1520012670799) (:by |root) (:id |BJgLKpWPuf)
                            :type :expr
                            :at 1520011067247
                            :by |root
                            :id |SybXrw-PuM
                        :type :expr
                        :at 1520011003198
                        :by |root
                        :id |HJQQ-vZD_f
                      |N $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1520012664601) (:by |root) (:id |BJZJYp-vdz)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520012644220) (:by |root) (:id |HJ-3PabP_z)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1520012646356) (:by |root) (:id |BygTvabvuG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520012647666) (:by |root) (:id |rJ8APpZvOf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1579108823727) (:by |rJG4IHzWf) (:id |1miiBs7m5)
                                          |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108823727) (:by |rJG4IHzWf) (:id |9IByCyTVe)
                                        :type :expr
                                        :at 1579108823727
                                        :by |rJG4IHzWf
                                        :id |VFtmvELtO
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1579108741760) (:by |rJG4IHzWf) (:id |uTHb7tvrKleaf)
                                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1579108743639) (:by |rJG4IHzWf) (:id |ABN9XKUE9)
                                        :type :expr
                                        :at 1579108740028
                                        :by |rJG4IHzWf
                                        :id |uTHb7tvrK
                                    :type :expr
                                    :at 1520012647263
                                    :by |root
                                    :id |SklJdT-D_M
                                :type :expr
                                :at 1520012645582
                                :by |root
                                :id |S10wp-P_f
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:inner-text) (:type :leaf) (:at 1579107488816) (:by |rJG4IHzWf) (:id |pgP0AJa9qleaf)
                                  |j $ {} (:text "|\"[]") (:type :leaf) (:at 1579107489668) (:by |rJG4IHzWf) (:id |Z6oD-KnCg)
                                :type :expr
                                :at 1579107485015
                                :by |rJG4IHzWf
                                :id |pgP0AJa9q
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1579108735495) (:by |rJG4IHzWf) (:id |lq5GVeb2i)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1579108735495) (:by |rJG4IHzWf) (:id |4jmJIY_l2)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1579108735495) (:by |rJG4IHzWf) (:id |PjDR_gWp2)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1579108735495) (:by |rJG4IHzWf) (:id |b5ftguKwR)
                                        :type :expr
                                        :at 1579108735495
                                        :by |rJG4IHzWf
                                        :id |VddGpNg_1
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1629279104224) (:by |rJG4IHzWf) (:id |LqZpmt277)
                                          |b $ {} (:text |cursor) (:type :leaf) (:at 1629279106720) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |not) (:type :leaf) (:at 1579108735495) (:by |rJG4IHzWf) (:id |iPGDrbNrf)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1579108735495) (:by |rJG4IHzWf) (:id |FDcOPt__g)
                                            :type :expr
                                            :at 1579108735495
                                            :by |rJG4IHzWf
                                            :id |UKW5-uV16
                                        :type :expr
                                        :at 1579108735495
                                        :by |rJG4IHzWf
                                        :id |6QHcmEiMN
                                    :type :expr
                                    :at 1579108735495
                                    :by |rJG4IHzWf
                                    :id |VU9L5eXhD
                                :type :expr
                                :at 1579108735495
                                :by |rJG4IHzWf
                                :id |BlfuFd8f6
                            :type :expr
                            :at 1520012643906
                            :by |root
                            :id |ByWWF6bvuM
                        :type :expr
                        :at 1520012663116
                        :by |root
                        :id |HJlJFTbv_M
                      |P $ {}
                        :data $ {}
                          |D $ {} (:text |if) (:type :leaf) (:at 1579108715584) (:by |rJG4IHzWf) (:id |dBzo-N1xd)
                          |L $ {} (:text |state) (:type :leaf) (:at 1579108717274) (:by |rJG4IHzWf) (:id |x5_mNDb_0)
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |3rbplaDcv)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |DZU2fGbP-)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |rGlE0alEh)
                                      |j $ {} (:text |style-folded) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |XrnqZm-GV)
                                    :type :expr
                                    :at 1579108717751
                                    :by |rJG4IHzWf
                                    :id |6C_wQZiu1
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:on-click) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |W_4YTpP5J)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |PxlSpD_iB)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |NhV6kwtEQ)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |2rjEuznmwk)
                                            :type :expr
                                            :at 1579108717751
                                            :by |rJG4IHzWf
                                            :id |PgsNWHC_5
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |d!) (:type :leaf) (:at 1629279097625) (:by |rJG4IHzWf) (:id |8xoKODWf1F)
                                              |b $ {} (:text |cursor) (:type :leaf) (:at 1629279098861) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |not) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |mFqYOCUm9e)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |1LFYkV92KH)
                                                :type :expr
                                                :at 1579108717751
                                                :by |rJG4IHzWf
                                                :id |0hKzsiI3wx
                                            :type :expr
                                            :at 1579108717751
                                            :by |rJG4IHzWf
                                            :id |bblmPEkybs
                                        :type :expr
                                        :at 1579108717751
                                        :by |rJG4IHzWf
                                        :id |YMeKC6CiC
                                    :type :expr
                                    :at 1579108717751
                                    :by |rJG4IHzWf
                                    :id |Osjm9EIuM
                                :type :expr
                                :at 1579108717751
                                :by |rJG4IHzWf
                                :id |tPtqfrMp9
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |uHJoXie4n2)
                                  |j $ {} (:text "|\"folded") (:type :leaf) (:at 1579108717751) (:by |rJG4IHzWf) (:id |LSKWkCstTo)
                                :type :expr
                                :at 1579108717751
                                :by |rJG4IHzWf
                                :id |DAxzkaQ5pr
                            :type :expr
                            :at 1579108717751
                            :by |rJG4IHzWf
                            :id |71dsel2x7
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |list->) (:type :leaf) (:at 1520011009031) (:by |root) (:id |BylDZDbvufleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520011010084) (:by |root) (:id |r1XFbDWDOf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1520012104890) (:by |root) (:id |r1gJUsZvdG)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1520012105481) (:by |root) (:id |SJ7b8o-DuM)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-left) (:type :leaf) (:at 1520012110156) (:by |root) (:id |B1zUjWDOz)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1520012111277) (:by |root) (:id |HJNLUoZwdG)
                                                  |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1520012114983) (:by |root) (:id |SkGDIiZDuM)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1520012116851) (:by |root) (:id |S1gh8jZwOM)
                                                      |j $ {} (:text |0) (:type :leaf) (:at 1520012118187) (:by |root) (:id |r1M6Is-D_z)
                                                      |r $ {} (:text |60) (:type :leaf) (:at 1520012150350) (:by |root) (:id |rkeAIoWvOz)
                                                      |v $ {} (:text |90) (:type :leaf) (:at 1520012153227) (:by |root) (:id |SyZywi-vdf)
                                                    :type :expr
                                                    :at 1520012116419
                                                    :by |root
                                                    :id |BkbhUobv_f
                                                :type :expr
                                                :at 1520012110457
                                                :by |root
                                                :id |SyS8Lj-D_G
                                            :type :expr
                                            :at 1520012105772
                                            :by |root
                                            :id |SkefLiWDdM
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1579108825488) (:by |rJG4IHzWf) (:id |c5gQvv2Hs)
                                              |j $ {} (:text "|\"2px 4px") (:type :leaf) (:at 1579108825488) (:by |rJG4IHzWf) (:id |wjQNYx7i9)
                                            :type :expr
                                            :at 1579108825488
                                            :by |rJG4IHzWf
                                            :id |CcXCQmOSI
                                        :type :expr
                                        :at 1520012105119
                                        :by |root
                                        :id |BkNW8j-vdf
                                    :type :expr
                                    :at 1520012102966
                                    :by |root
                                    :id |Sk-1LjWw_f
                                :type :expr
                                :at 1520011009696
                                :by |root
                                :id |rkcZPbwdf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1629279079956) (:by |rJG4IHzWf) (:id |r1obPWPdz)
                                  |b $ {} (:text |data) (:type :leaf) (:at 1520011251934) (:by |root) (:id |S1WsgOWw_f)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |map-indexed) (:type :leaf) (:at 1520011019668) (:by |root) (:id |HybMvWDOG)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1520011020492) (:by |root) (:id |B1-VfDbPdz)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |idx) (:type :leaf) (:at 1520011022827) (:by |root) (:id |BkrMvbwdG)
                                              |j $ {} (:text |child) (:type :leaf) (:at 1520011024938) (:by |root) (:id |SJdfP-wuG)
                                            :type :expr
                                            :at 1520011020800
                                            :by |root
                                            :id |HygBMPWwdM
                                          |r $ {}
                                            :data $ {}
                                              |D $ {} (:text |[]) (:type :leaf) (:at 1520011037644) (:by |root) (:id |BJN7P-POM)
                                              |T $ {} (:text |idx) (:type :leaf) (:at 1520011031091) (:by |root) (:id |ryiGDbwdMleaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |comp-data) (:type :leaf) (:at 1520097790026) (:by |root) (:id |rkeCfOWPdz)
                                                  |b $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |>>) (:type :leaf) (:at 1629279085304) (:by |rJG4IHzWf)
                                                      |T $ {} (:text |states) (:type :leaf) (:at 1520098405277) (:by |root) (:id |r1pD38u_f)
                                                      |j $ {} (:text |idx) (:type :leaf) (:at 1629279086400) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1629279084492
                                                    :by |rJG4IHzWf
                                                  |j $ {} (:text |child) (:type :leaf) (:at 1520011343080) (:by |root) (:id |BkLLO-Ddf)
                                                :type :expr
                                                :at 1520011286551
                                                :by |root
                                                :id |SJkXuWPOG
                                            :type :expr
                                            :at 1520011026831
                                            :by |root
                                            :id |ryiGDbwdM
                                        :type :expr
                                        :at 1520011020144
                                        :by |root
                                        :id |H1z4Mv-w_G
                                    :type :expr
                                    :at 1520011018248
                                    :by |root
                                    :id |HyMGfw-wOM
                                :type :expr
                                :at 1520011012182
                                :by |root
                                :id |H13WvZwdG
                            :type :expr
                            :at 1520011006962
                            :by |root
                            :id |BylDZDbvuf
                        :type :expr
                        :at 1579108715103
                        :by |rJG4IHzWf
                        :id |rdgcncjz
                    :type :expr
                    :at 1520011002064
                    :by |root
                    :id |HyGWPbw_M
                :type :expr
                :at 1579108720217
                :by |rJG4IHzWf
                :id |ePG6vYz2x
            :type :expr
            :at 1520008850821
            :by |root
            :id |SygiqCxPdM
          |style-folded $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |BTUaBhU0e)
              |j $ {} (:text |style-folded) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |bBuQKVzZl)
              |r $ {}
                :data $ {}
                  |xT $ {}
                    :data $ {}
                      |T $ {} (:text |:line-height) (:type :leaf) (:at 1579108898171) (:by |rJG4IHzWf) (:id |9EdjvryMleaf)
                      |j $ {} (:text "|\"20px") (:type :leaf) (:at 1579108905092) (:by |rJG4IHzWf) (:id |59LaMqmld)
                    :type :expr
                    :at 1579108893311
                    :by |rJG4IHzWf
                    :id |9EdjvryM
                  |xj $ {}
                    :data $ {}
                      |T $ {} (:text |:height) (:type :leaf) (:at 1579108908923) (:by |rJG4IHzWf) (:id |9EdjvryMleaf)
                      |j $ {} (:text "|\"20px") (:type :leaf) (:at 1579108905092) (:by |rJG4IHzWf) (:id |59LaMqmld)
                    :type :expr
                    :at 1579108893311
                    :by |rJG4IHzWf
                    :id |O57eu3N9
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:cursor) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |EeOb5bPA8r)
                      |j $ {} (:text |:pointer) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |FvAKjqORI_)
                    :type :expr
                    :at 1579108633155
                    :by |rJG4IHzWf
                    :id |rRcvpSYSCs
                  |T $ {} (:text |{}) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |2ZjJ_E3W-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:background-color) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |-wIw1ne-E)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |hsl) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |RtWnLE7Xt)
                          |j $ {} (:text |260) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |g3UIMKHiF)
                          |r $ {} (:text |80) (:type :leaf) (:at 1579108913751) (:by |rJG4IHzWf) (:id |huknNypM0)
                          |v $ {} (:text |70) (:type :leaf) (:at 1579108916794) (:by |rJG4IHzWf) (:id |u-77KEZYT)
                        :type :expr
                        :at 1579108633155
                        :by |rJG4IHzWf
                        :id |lflMhg_-v
                    :type :expr
                    :at 1579108633155
                    :by |rJG4IHzWf
                    :id |Fz7qclSVM
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:color) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |xxJu-iE93)
                      |j $ {} (:text |:white) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |97ORe1UQK)
                    :type :expr
                    :at 1579108633155
                    :by |rJG4IHzWf
                    :id |PJ1L-35UW
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:padding) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |2o2K41mRED)
                      |j $ {} (:text "||0px 6px") (:type :leaf) (:at 1579108870587) (:by |rJG4IHzWf) (:id |-UFBVTFOXi)
                    :type :expr
                    :at 1579108633155
                    :by |rJG4IHzWf
                    :id |I7tdGdXC2r
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:display) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |XWsKNBn1Nb)
                      |j $ {} (:text |:inline-block) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |_98dyQElmA)
                    :type :expr
                    :at 1579108633155
                    :by |rJG4IHzWf
                    :id |EK5WtL5sPF
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:border-radius) (:type :leaf) (:at 1579108633155) (:by |rJG4IHzWf) (:id |gYa8zTGe_F)
                      |j $ {} (:text ||2px) (:type :leaf) (:at 1579108860371) (:by |rJG4IHzWf) (:id |oZufw60zHA)
                    :type :expr
                    :at 1579108633155
                    :by |rJG4IHzWf
                    :id |xaVpMNYZ-m
                :type :expr
                :at 1579108633155
                :by |rJG4IHzWf
                :id |2a6Slo1hN
            :type :expr
            :at 1579108633155
            :by |rJG4IHzWf
            :id |FhhdBigSI
          |comp-edn-grid $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1519976141432) (:by |root) (:id |H1WfCRuLdG)
              |j $ {} (:text |comp-edn-grid) (:type :leaf) (:at 1519976137984) (:by |root) (:id |ryzz0RuLuf)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |states) (:type :leaf) (:at 1520098369067) (:by |root) (:id |ryxuH38d_z)
                  |T $ {} (:text |data) (:type :leaf) (:at 1519976146561) (:by |root) (:id |rkbLCCOIdG)
                :type :expr
                :at 1519976137984
                :by |root
                :id |SJXM0AOLdM
              |v $ {}
                :data $ {}
                  |D $ {} (:text |div) (:type :leaf) (:at 1520008628649) (:by |root) (:id |BJbh3TlPuf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520008630371) (:by |root) (:id |BybanTePOf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520008632521) (:by |root) (:id |SkJpplPdz)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520008633140) (:by |root) (:id |r1xbTTxwdz)
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:line-height) (:type :leaf) (:at 1520012201110) (:by |root) (:id |Bk6ssbPuMleaf)
                                  |j $ {} (:text "|\"18px") (:type :leaf) (:at 1579108385238) (:by |rJG4IHzWf) (:id |Hkf2jWPOz)
                                :type :expr
                                :at 1520012196821
                                :by |root
                                :id |Bk6ssbPuM
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-family) (:type :leaf) (:at 1520073507253) (:by |root) (:id |Bkr7jluOzleaf)
                                  |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1520073514039) (:by |root) (:id |rkCmieduG)
                                :type :expr
                                :at 1520073500785
                                :by |root
                                :id |Bkr7jluOz
                              |y $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-size) (:type :leaf) (:at 1579108392039) (:by |rJG4IHzWf) (:id |JjufLOepOleaf)
                                  |j $ {} (:text |12) (:type :leaf) (:at 1579108395553) (:by |rJG4IHzWf) (:id |930UWK7N)
                                :type :expr
                                :at 1579108389868
                                :by |rJG4IHzWf
                                :id |JjufLOepO
                            :type :expr
                            :at 1520008632789
                            :by |root
                            :id |Syb-pTxvdG
                        :type :expr
                        :at 1520008630692
                        :by |root
                        :id |BygJ6pgvOM
                    :type :expr
                    :at 1520008628879
                    :by |root
                    :id |Syza3TePOM
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |comp-data) (:type :leaf) (:at 1520097764828) (:by |root) (:id |SJWoCCuLdzleaf)
                      |b $ {}
                        :data $ {}
                          |D $ {} (:text |>>) (:type :leaf) (:at 1629278987700) (:by |rJG4IHzWf)
                          |T $ {} (:text |states) (:type :leaf) (:at 1520098371485) (:by |root) (:id |SJg5HhUudf)
                          |j $ {} (:text |:root) (:type :leaf) (:at 1629278988403) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629278986828
                        :by |rJG4IHzWf
                      |j $ {} (:text |data) (:type :leaf) (:at 1519976171532) (:by |root) (:id |r1ZXe1t8OG)
                    :type :expr
                    :at 1519976147118
                    :by |root
                    :id |SJWoCCuLdz
                :type :expr
                :at 1520008627811
                :by |root
                :id |H1g3nTlw_f
            :type :expr
            :at 1519976137984
            :by |root
            :id |rJxMCRdIdz
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1519976119195
          :by |root
          :id |HJXyaROLuf
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1519976119195) (:by |root) (:id |SJbyp0dIdM)
            |j $ {} (:text |app.comp.edn-grid) (:type :leaf) (:at 1519976119195) (:by |root) (:id |ryMk60dIOz)
            |r $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root) (:id |ryKcErMdGleaf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root) (:id |HJMtqNBGuf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root) (:id |Syl69VHMuM)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root) (:id |HJwaqVHM_M)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root) (:id |BJf0cVSMdz)
                      :type :expr
                      :at 1519699093683
                      :by |root
                      :id |S1R54BfuG
                  :type :expr
                  :at 1519699088529
                  :by |root
                  :id |ryKcErMdG
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519975963126) (:by |root) (:id |rJX7AOUOMleaf)
                    |j $ {} (:text |respo.comp.inspect) (:type :leaf) (:at 1519975967149) (:by |root) (:id |HkGX7ROL_z)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519975967847) (:by |root) (:id |HkNwmROLOG)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519975968220) (:by |root) (:id |r17_X0OUdG)
                        |j $ {} (:text |comp-inspect) (:type :leaf) (:at 1519975971262) (:by |root) (:id |SJDO7Ad8dz)
                      :type :expr
                      :at 1519975968050
                      :by |root
                      :id |HJNd7R_8OM
                  :type :expr
                  :at 1519975962699
                  :by |root
                  :id |rJX7AOUOM
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629278996755) (:text |respo-ui.core)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |BkLgidF56rb)
                        |j $ {} (:author |root) (:text |hsl) (:time 1499755354983) (:type :leaf) (:id |SkPxidY56H-)
                      :time 1499755354983
                      :type :expr
                      :id |SyHeiOYcTr-
                  :time 1499755354983
                  :type :expr
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJtgouK5pBZ)
                    |j $ {} (:author |root) (:text |respo-ui.core) (:time 1499755354983) (:type :leaf) (:at 1516527080962) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |HJoxsuF5pr-)
                    |v $ {} (:author |root) (:text |ui) (:time 1499755354983) (:type :leaf) (:id |r1hgjuY5TH-)
                  :time 1499755354983
                  :type :expr
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |r1BodKcprZ)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:at 1563124209055) (:by |root) (:id |ryLoOY5pHb)
                    |r $ {} (:author |root) (:text |:refer) (:time 1508946162679) (:type :leaf) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |qT $ {} (:text |list->) (:type :leaf) (:at 1520010271842) (:by |root) (:id |S1ev7EZvOz)
                        |xT $ {} (:author |rJG4IHzWf) (:text |textarea) (:time 1512359490531) (:type :leaf) (:id |BJtB8rGbG)
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |S1KidKq6r-)
                        |j $ {} (:author |root) (:text |defcomp) (:time 1499755354983) (:type :leaf) (:id |B1cs_Fq6B-)
                        |n $ {} (:author |root) (:text |>>) (:time 1509727116530) (:type :leaf) (:at 1629279226503) (:by |rJG4IHzWf) (:id |BJlz9oM90-)
                        |r $ {} (:author |root) (:text |<>) (:time 1499755354983) (:type :leaf) (:id |SJsiOY5pr-)
                        |v $ {} (:author |root) (:text |div) (:time 1499755354983) (:type :leaf) (:id |SJ2oOY96S-)
                        |x $ {} (:author |root) (:text |button) (:time 1499755354983) (:type :leaf) (:id |BkpiOFq6S-)
                        |y $ {} (:author |root) (:text |span) (:time 1499755354983) (:type :leaf) (:id |r1Aj_YqaB-)
                      :time 1499755354983
                      :type :expr
                      :id |H1do_K5aS-
                  :time 1499755354983
                  :type :expr
                  :id |SJgC3cjTTW
                |x $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJH-s_t96rb)
                    |j $ {} (:author |root) (:text |respo.comp.space) (:time 1499755354983) (:type :leaf) (:id |SyUbi_t5pH-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rkFWouKcTr-)
                        |j $ {} (:author |root) (:text |=<) (:time 1499755354983) (:type :leaf) (:id |Hy5WjdY5TS-)
                      :time 1499755354983
                      :type :expr
                      :id |rJd-iOKc6rZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy4-oOt96SZ
              :time 1499755354983
              :type :expr
              :id |S1vkktU_M
          :type :expr
          :at 1519976119195
          :by |root
          :id |H1lyaRdUOG
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |HkDssOFcaBb)
              |j $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |Sy_osdKc6Hb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |B1YjiOY5TSb
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:at 1629279258026) (:by |rJG4IHzWf) (:id |B12oiuFcTH-)
                  |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |BJpssOY5arW)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |ry12out96SZ)
                      |j $ {} (:author |root) (:text |@*reel) (:time 1507400119272) (:type :leaf) (:id |S1ehi_tcTSW)
                    :time 1499755354983
                    :type :expr
                    :id |SkCijOK9TBW
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1629279254178) (:by |rJG4IHzWf)
                :time 1499755354983
                :type :expr
                :id |Hkisi_K9aBb
            :time 1499755354983
            :type :expr
            :id |rkIjoOt9TSZ
          |mount-target $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |def) (:time 1499755354983) (:type :leaf) (:id |S1oAjut5TBZ)
              |j $ {} (:author |root) (:text |mount-target) (:time 1499755354983) (:type :leaf) (:id |rJ2Cj_t5aBZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |.querySelector) (:time 1499755354983) (:type :leaf) (:id |HyRCs_tqpH-)
                  |j $ {} (:author |root) (:text |js/document) (:time 1499755354983) (:type :leaf) (:id |ryy1ejdFq6SW)
                  |r $ {} (:author |root) (:text ||.app) (:time 1499755354983) (:type :leaf) (:id |B1gygs_t56rW)
                :time 1499755354983
                :type :expr
                :id |HJpAjOY5arZ
            :time 1499755354983
            :type :expr
            :id |B1qRjdF9aH-
          |*reel $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defatom) (:time 1499755354983) (:type :leaf) (:at 1629279245999) (:by |rJG4IHzWf) (:id |Hym2s_F9Tr-)
              |j $ {} (:author |root) (:text |*reel) (:time 1499755354983) (:type :leaf) (:id |rJEhsuY5arW)
              |r $ {} (:author |root)
                :data $ {}
                  |D $ {} (:author |root) (:text |->) (:time 1507399778895) (:type :leaf) (:id |Bkx5wOq83b)
                  |T $ {} (:author |root) (:text |reel-schema/reel) (:time 1507399776350) (:type :leaf) (:id |SkvhsuKqaBW)
                  |j $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:base) (:time 1507401405076) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |H1hvucUnZ
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |assoc) (:time 1507399781682) (:type :leaf) (:id |ByMjD_cL2b)
                      |j $ {} (:author |root) (:text |:store) (:time 1507399793097) (:type :leaf) (:id |SJb0w_qL3b)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507399787471) (:type :leaf) (:id |S1xdu5U3Z)
                    :time 1507399779656
                    :type :expr
                    :id |S1P__5I3b
                :time 1507399777531
                :type :expr
                :id |HJ9Pd5U3-
            :time 1499755354983
            :type :expr
            :id |Hkf2sOYqpBb
          |main! $ {}
            :data $ {}
              |yD $ {} (:author |root)
                :data $ {}
                  |T $ {} (:author |root) (:text |listen-devtools!) (:time 1507461739167) (:type :leaf) (:id |Hyg2E5tPhbleaf)
                  |j $ {} (:author |root) (:text ||a) (:time 1507461691211) (:type :leaf) (:id |HkffSqFv2W)
                  |r $ {} (:author |root) (:text |dispatch!) (:time 1507461693919) (:type :leaf) (:id |SJEBqYD2W)
                :time 1507461684494
                :type :expr
                :id |Hyg2E5tPhb
              |yL $ {}
                :data $ {}
                  |T $ {} (:text |.addEventListener) (:type :leaf) (:at 1518157450281) (:by |root) (:id |BJg8VR398Gleaf)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root) (:id |rkmqRncIf)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root) (:id |Sk8cAnqUz)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1518157458770) (:by |root) (:id |S1r9qCh9IG)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |e) (:type :leaf) (:at 1629279263656) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1518157459040
                        :by |root
                        :id |Syfs9RhqUf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.setItem) (:type :leaf) (:at 1518157462213) (:by |root) (:id |HkhqC35Izleaf)
                          |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157469807) (:by |root) (:id |B1WjRhcUf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:storage) (:type :leaf) (:at 1518157474283) (:by |root) (:id |rkbUo039UM)
                              |j $ {} (:text |schema/config) (:type :leaf) (:at 1518157479270) (:by |root) (:id |r1ZniCnqUG)
                            :type :expr
                            :at 1518157470618
                            :by |root
                            :id |BJviR3qIf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1629279198926) (:by |rJG4IHzWf) (:id |B1llhAhcUG)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:store) (:type :leaf) (:at 1518157487007) (:by |root) (:id |rJN3Cn5UM)
                                  |j $ {} (:text |@*reel) (:type :leaf) (:at 1518157490708) (:by |root) (:id |r1OhRh58z)
                                :type :expr
                                :at 1518157486267
                                :by |root
                                :id |r1xUnAn98G
                            :type :expr
                            :at 1518157481383
                            :by |root
                            :id |SyWnA3qLM
                        :type :expr
                        :at 1518157459864
                        :by |root
                        :id |HkhqC35Iz
                    :type :expr
                    :at 1518157458477
                    :by |root
                    :id |r185qC3qLz
                :type :expr
                :at 1518157357847
                :by |root
                :id |BJg8VR398G
              |yP $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root) (:id |rJ6n03q8Gleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root) (:id |Byz1aA3c8z)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.getItem) (:type :leaf) (:at 1518157501316) (:by |root) (:id |HyG-T0258G)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root) (:id |ByMHTA2cUz)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage) (:type :leaf) (:at 1518157507553) (:by |root) (:id |ByWtTAn9UM)
                                  |j $ {} (:text |schema/config) (:type :leaf) (:at 1518157512611) (:by |root) (:id |S1lhTCh9Uf)
                                :type :expr
                                :at 1518157506313
                                :by |root
                                :id |HJc60h9Iz
                            :type :expr
                            :at 1518157497615
                            :by |root
                            :id |ryGaR29Lf
                        :type :expr
                        :at 1518157495826
                        :by |root
                        :id |rJgl6A2cLz
                    :type :expr
                    :at 1518157495644
                    :by |root
                    :id |SJxpRh9Iz
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1519976001224) (:by |root) (:id |B1WMCAhcUfleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root) (:id |BkbQRRh5Iz)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root) (:id |Hk-V0R3cLf)
                        :type :expr
                        :at 1518157515117
                        :by |root
                        :id |B1MmRA2cIz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |do) (:type :leaf) (:at 1518157521057) (:by |root) (:id |ByUR0n9Ifleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root) (:id |BJWt0A39Lf)
                              |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root) (:id |H1l3RR3cIz)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629279195662) (:by |rJG4IHzWf) (:id |Byly1p9Uf)
                                  |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root) (:id |rkmJyacIz)
                                :type :expr
                                :at 1518157527987
                                :by |root
                                :id |SJWx1yac8M
                            :type :expr
                            :at 1518157521635
                            :by |root
                            :id |BycA03cLG
                        :type :expr
                        :at 1518157517700
                        :by |root
                        :id |ByUR0n9If
                    :type :expr
                    :at 1518157514334
                    :by |root
                    :id |B1WMCAhcUf
                :type :expr
                :at 1518157492640
                :by |root
                :id |rJ6n03q8G
              |yT $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |println) (:time 1499755354983) (:type :leaf) (:id |H1dAiOtqpBZ)
                  |j $ {} (:author |root) (:text "||App started.") (:time 1499755354983) (:type :leaf) (:id |Byt0idYcaHW)
                :time 1499755354983
                :type :expr
                :id |H1vRoOF5pSZ
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |ByW6ouF5Trb)
              |j $ {} (:author |root) (:text |main!) (:time 1499755354983) (:type :leaf) (:id |H1Gpo_YqaHb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |BkX6juY5aB-
              |u $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1629279277062) (:by |rJG4IHzWf)
                  |j $ {} (:text |dev?) (:type :leaf) (:at 1629279313020) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |load-console-formatter!) (:type :leaf) (:at 1629279291557) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629279285678
                    :by |rJG4IHzWf
                :type :expr
                :at 1629279276598
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |SJoas_K9arW)
                :time 1499755354983
                :type :expr
                :id |B1qaj_K5aSZ
              |y $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |add-watch) (:time 1499755354983) (:type :leaf) (:id |HJRTs_F56Hb)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507399915531) (:type :leaf) (:id |rky0s_YqaBZ)
                  |r $ {} (:author |root) (:text |:changes) (:time 1499755354983) (:type :leaf) (:id |H1lRsOY56H-)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:author |root) (:text |fn) (:time 1499755354983) (:type :leaf) (:id |ryz0jOtcTrW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |r) (:type :leaf) (:at 1629279265528) (:by |rJG4IHzWf)
                          |j $ {} (:text |p) (:type :leaf) (:at 1629279266260) (:by |rJG4IHzWf)
                        :time 1499755354983
                        :type :expr
                        :id |B1QCi_t9pS-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:author |root) (:text |render-app!) (:time 1499755354983) (:type :leaf) (:id |BkHCsOY5aBb)
                        :time 1499755354983
                        :type :expr
                        :id |SJV0jdKqprW
                    :time 1499755354983
                    :type :expr
                    :id |H1bCidtcaSb
                :time 1499755354983
                :type :expr
                :id |r1p6oOFcTrZ
            :time 1499755354983
            :type :expr
            :id |Hkl6i_F5aBb
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |rJ5_idt5TBW)
              |j $ {} (:author |root) (:text |dispatch!) (:time 1499755354983) (:type :leaf) (:id |B1i_oOY9pHW)
              |r $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |op) (:time 1499755354983) (:type :leaf) (:id |HyT_suY56Bb)
                  |j $ {} (:author |root) (:text |op-data) (:time 1499755354983) (:type :leaf) (:id |S1AdidYc6Hb)
                :time 1499755354983
                :type :expr
                :id |BJhOjOYqpSW
              |t $ {}
                :data $ {}
                  |T $ {} (:text |;) (:type :leaf) (:at 1518156275745) (:by |root) (:id |rkqgqhqUMleaf)
                  |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root) (:id |Bkg3x9n5UG)
                  |r $ {} (:text ||Dispatch:) (:type :leaf) (:at 1518156280042) (:by |root) (:id |rJpx93cUG)
                  |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root) (:id |ryzgb92qIz)
                :type :expr
                :at 1518156274050
                :by |root
                :id |rkqgqhqUM
              |v $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |reset!) (:time 1499755354983) (:type :leaf) (:id |H1w9iOt56S-)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507399899641) (:type :leaf) (:id |rJOcjdYqaHW)
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |reel-updater) (:time 1507399887573) (:type :leaf) (:id |HkB0Oc8n-leaf)
                      |j $ {} (:author |root) (:text |updater) (:time 1507399888500) (:type :leaf) (:id |r1eu0dqL2Z)
                      |r $ {} (:author |root) (:text |@*reel) (:time 1507399891576) (:type :leaf) (:id |r1tRdqU3W)
                      |v $ {} (:author |root) (:text |op) (:time 1507399892687) (:type :leaf) (:id |S1e3CO9I3W)
                      |x $ {} (:author |root) (:text |op-data) (:time 1507399894594) (:type :leaf) (:id |HklaCd58nb)
                    :time 1507399884621
                    :type :expr
                    :id |rkLeq39LG
                :time 1499755354983
                :type :expr
                :id |BJg_echcIM
            :time 1499755354983
            :type :expr
            :id |SytOodK9pSZ
          |reload! $ {}
            :data $ {}
              |T $ {} (:author |root) (:text |defn) (:time 1499755354983) (:type :leaf) (:id |Hksqidt5TBZ)
              |j $ {} (:author |root) (:text |reload!) (:time 1499755354983) (:type :leaf) (:id |SJ3qidY5TBb)
              |r $ {}
                :data $ {}
                :time 1499755354983
                :type :expr
                :id |rJa9idt9TH-
              |u $ {} (:author |root)
                :data $ {}
                  |T $ {} (:author |root) (:text |clear-cache!) (:time 1507461702453) (:type :leaf) (:id |H1xoB5tw2Wleaf)
                :time 1507461699387
                :type :expr
                :id |H1xoB5tw2W
              |w $ {} (:author |root)
                :data $ {}
                  |T $ {} (:author |root) (:text |reset!) (:time 1507461706990) (:type :leaf) (:id |r1ZgIcFvhWleaf)
                  |j $ {} (:author |root) (:text |*reel) (:time 1507461708965) (:type :leaf) (:id |B1mX85Yv3-)
                  |r $ {} (:author |root)
                    :data $ {}
                      |T $ {} (:author |root) (:text |refresh-reel) (:time 1507461730190) (:type :leaf) (:id |HkIL9YDh-)
                      |j $ {} (:author |root) (:text |@*reel) (:time 1507461719097) (:type :leaf) (:id |B1nL9Yv3W)
                      |r $ {} (:author |root) (:text |schema/store) (:time 1507461721870) (:type :leaf) (:id |Bylwqtw3W)
                      |v $ {} (:author |root) (:text |updater) (:time 1507461722724) (:type :leaf) (:id |SkQfP9twhZ)
                    :time 1507461710020
                    :type :expr
                    :id |Sye88ctw2W
                :time 1507461704162
                :type :expr
                :id |r1ZgIcFvhW
              |y $ {}
                :data $ {}
                  |T $ {} (:author |root) (:text |println) (:time 1499755354983) (:type :leaf) (:id |HyVosdFqaBb)
                  |j $ {} (:author |root) (:text "||Code updated.") (:time 1499755354983) (:type :leaf) (:id |BkHisOK5TSZ)
                :time 1499755354983
                :type :expr
                :id |HJXoiuY9THb
            :time 1499755354983
            :type :expr
            :id |Sk5qouK9aBZ
        :proc $ {}
          :data $ {}
          :time 1499755354983
          :type :expr
          :id |SkGujdK5aSW
        :ns $ {}
          :data $ {}
            |T $ {} (:author |root) (:text |ns) (:time 1499755354983) (:type :leaf) (:id |S1ESouY9pSW)
            |j $ {} (:author |root) (:text |app.main) (:time 1499755354983) (:type :leaf) (:id |HJHriOFcTHZ)
            |r $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJ0DiuF5aSZ)
                    |j $ {} (:author |root) (:text |app.schema) (:time 1499755354983) (:type :leaf) (:id |rJJOoOY5pS-)
                    |r $ {} (:author |root) (:text |:as) (:time 1499755354983) (:type :leaf) (:id |rye_i_FqTBb)
                    |v $ {} (:author |root) (:text |schema) (:time 1499755354983) (:type :leaf) (:id |SJbujOK96rW)
                  :time 1499755354983
                  :type :expr
                  :id |BJawo_tcaHW
                |yj $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399674614) (:type :leaf) (:id |Byez-dqLhbleaf)
                    |j $ {} (:author |root) (:text |reel.util) (:time 1507399678694) (:type :leaf) (:id |r1-XZO5LnW)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399680625) (:type :leaf) (:id |BkuW_qLnZ)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399681518) (:type :leaf) (:id |ByeF-uqI3W)
                        |j $ {} (:author |root) (:text |listen-devtools!) (:time 1507399682662) (:type :leaf) (:at 1518156292092) (:by |root) (:id |Syxc-_cI3b)
                      :time 1507399680857
                      :type :expr
                      :id |ByZK-uq83b
                  :time 1507399674125
                  :type :expr
                  :id |Byez-dqLhb
                |yr $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399684313) (:type :leaf) (:id |HyxhW_582-leaf)
                    |j $ {} (:author |root) (:text |reel.core) (:time 1507399687162) (:type :leaf) (:id |rkT-OcUn-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1507399688098) (:type :leaf) (:id |Bkr1MOqL2Z)
                    |v $ {} (:author |root)
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1507399688928) (:type :leaf) (:id |BkEgM_qU3W)
                        |j $ {} (:author |root) (:text |reel-updater) (:time 1507399691010) (:type :leaf) (:id |Bk--G_q8h-)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root) (:id |By_Z935Uz)
                      :time 1507399688322
                      :type :expr
                      :id |BkHgM_q8hW
                  :time 1507399683930
                  :type :expr
                  :id |HyxhW_582-
                |yv $ {} (:author |root)
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1507399715600) (:type :leaf) (:id |rJgi7OcU3Wleaf)
                    |j $ {} (:author |root) (:text |reel.schema) (:time 1507399717674) (:type :leaf) (:id |BybnXdcIhW)
                    |r $ {} (:author |root) (:text |:as) (:time 1507399755750) (:type :leaf) (:id |rJ-Cmu583Z)
                    |v $ {} (:author |root) (:text |reel-schema) (:time 1507399757678) (:type :leaf) (:id |Hk-NL_q8n-)
                  :time 1507399715229
                  :type :expr
                  :id |rJgi7OcU3W
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1518157534486) (:by |root) (:id |HkZI1kT9LMleaf)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1518157537473) (:by |root) (:id |Hyvk1T5Lz)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1518157538193) (:by |root) (:id |Hy5yy698G)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1518157538636) (:by |root) (:id |B1Ucy1TcUG)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1518157540981) (:by |root) (:id |B1Zj1ypq8G)
                      :type :expr
                      :at 1518157538431
                      :by |root
                      :id |BJvckk6cLz
                  :type :expr
                  :at 1518157534012
                  :by |root
                  :id |HkZI1kT9LM
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |app.config) (:type :leaf) (:at 1629279322304) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1629279323059) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |dev?) (:type :leaf) (:at 1629279324227) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1629279323399
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1629279317226
                  :by |rJG4IHzWf
                |T $ {} (:author |root) (:text |:require) (:time 1499755354983) (:type :leaf) (:id |SkPHjOK96rZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ByKHidF56r-)
                    |j $ {} (:author |root) (:text |respo.core) (:time 1499755354983) (:type :leaf) (:id |H15HidK9Tr-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |ByiSsOF9THZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |rJ6BiuF96BZ)
                        |j $ {} (:author |root) (:text |render!) (:time 1499755354983) (:type :leaf) (:id |rJAri_KcTS-)
                        |r $ {} (:author |root) (:text |clear-cache!) (:time 1499755354983) (:type :leaf) (:id |Hkk8sOFq6rb)
                        |v $ {} (:author |root) (:text |realize-ssr!) (:time 1499755354983) (:type :leaf) (:id |Byx8i_F9TH-)
                      :time 1499755354983
                      :type :expr
                      :id |rJhBiuK5aHb
                  :time 1499755354983
                  :type :expr
                  :id |Hk_HouY9prW
                |v $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkYUj_t9pBW)
                    |j $ {} (:author |root) (:text |app.comp.container) (:time 1499755354983) (:type :leaf) (:id |SyqIj_Y9aHZ)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BkoIjut9pHW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HkTLj_FcpBW)
                        |j $ {} (:author |root) (:text |comp-container) (:time 1499755354983) (:type :leaf) (:id |Hy0IidKqTr-)
                      :time 1499755354983
                      :type :expr
                      :id |Sy2IsOYqaSZ
                  :time 1499755354983
                  :type :expr
                  :id |Sy_IiOKqprZ
                |y $ {}
                  :data $ {}
                    |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |ryDvs_K96rb)
                    |j $ {} (:author |root) (:text |app.updater) (:time 1508556737455) (:type :leaf) (:id |B1_vsuK96r-)
                    |r $ {} (:author |root) (:text |:refer) (:time 1499755354983) (:type :leaf) (:id |BJKvodKcTB-)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:author |root) (:text |[]) (:time 1499755354983) (:type :leaf) (:id |HJjDjuFqpSb)
                        |j $ {} (:author |root) (:text |updater) (:time 1499755354983) (:type :leaf) (:id |SJhwiOY5TB-)
                      :time 1499755354983
                      :type :expr
                      :id |Hy5woOKqTHb
                  :time 1499755354983
                  :type :expr
                  :id |SyLDodYcTS-
              :time 1499755354983
              :type :expr
              :id |BJ8SodF9prb
          :time 1499755354983
          :type :expr
          :id |rkQBo_Yc6Hb
      |app.config $ {}
        :defs $ {}
          |cdn? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1563124197171) (:by |root) (:id |SSMKEXXm7x)
              |j $ {} (:text |cdn?) (:type :leaf) (:at 1563124197171) (:by |root) (:id |1dF7d4Rkbw)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1563124197171) (:by |root) (:id |r0ayzGOyo8)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1563124197171) (:by |root) (:id |xyecf0pLmE)
                          |j $ {} (:text |js/window) (:type :leaf) (:at 1563124197171) (:by |root) (:id |oVOtGbWuPh)
                        :type :expr
                        :at 1563124197171
                        :by |root
                        :id |baYca8s7DV
                      |j $ {} (:text |false) (:type :leaf) (:at 1563124197171) (:by |root) (:id |2jcL9c0KBw)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |7MBOEJO7ob
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1563124197171) (:by |root) (:id |pGBg3-cUS6c)
                          |j $ {} (:text |js/process) (:type :leaf) (:at 1563124197171) (:by |root) (:id |pkAo9lkgbMQ)
                        :type :expr
                        :at 1563124197171
                        :by |root
                        :id |hum1agnekOn
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1563124197171) (:by |root) (:id |j2W-qiNdwyx)
                          |j $ {} (:text "|\"true") (:type :leaf) (:at 1563124197171) (:by |root) (:id |r1RqXY88MEb)
                          |r $ {} (:text |js/process.env.cdn) (:type :leaf) (:at 1563124197171) (:by |root) (:id |15TczbLbG4u)
                        :type :expr
                        :at 1563124197171
                        :by |root
                        :id |sJ3fsQvGGKU
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |hW_w6FTnfW
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:else) (:type :leaf) (:at 1563124197171) (:by |root) (:id |5Et0E9oJPa6)
                      |j $ {} (:text |false) (:type :leaf) (:at 1563124197171) (:by |root) (:id |0_uoCBMP5FV)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |tLroBMHXTNT
                :type :expr
                :at 1563124197171
                :by |root
                :id |opuLje9DJ7
            :type :expr
            :at 1563124197171
            :by |root
            :id |fMajq7h51j
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1563124197171) (:by |root) (:id |ATH3JYOhcnX)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1563124197171) (:by |root) (:id |X15coPEEDsV)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |=) (:type :leaf) (:at 1629279299523) (:by |rJG4IHzWf) (:id |tscXUPJLTjY)
                  |j $ {} (:text "|\"dev") (:type :leaf) (:at 1629279300858) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |get-env) (:type :leaf) (:at 1629279305399) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"dev") (:type :leaf) (:at 1629279306645) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629279301151
                    :by |rJG4IHzWf
                :type :expr
                :at 1563124197171
                :by |root
                :id |CYdYeMYw4vr
            :type :expr
            :at 1563124197171
            :by |root
            :id |hp2SC0zwzBM
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1563124197171) (:by |root) (:id |Z81KcmASfMb)
              |j $ {} (:text |site) (:type :leaf) (:at 1563124197171) (:by |root) (:id |3ZdA79uiQki)
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1563124197171) (:by |root) (:id |bJzOxk47H4U)
                      |j $ {} (:text "|\"edn-grid") (:type :leaf) (:at 1579107266488) (:by |rJG4IHzWf) (:id |E2F1b0qS54g)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |1uVmz3kRP-L
                  |T $ {} (:text |{}) (:type :leaf) (:at 1563124197171) (:by |root) (:id |e5JY3thEibF)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1563124197171) (:by |root) (:id |rRgogtoMfFM)
                      |j $ {} (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf) (:at 1563124197171) (:by |root) (:id |ZgDxq5j0XEy)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |BHm1_8Hrf6k
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1563124197171) (:by |root) (:id |DiZw_BYGJus)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf) (:at 1563124197171) (:by |root) (:id |1Oc3m7dnjnw)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |kwyaPS2jawL
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1563124197171) (:by |root) (:id |UFo6TAXEyqr)
                      |j $ {} (:text "|\"http://cdn.tiye.me/edn-grid/") (:type :leaf) (:at 1574959631507) (:by |rJG4IHzWf) (:id |f2g0B2gSzje)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |4H-lLvD9dUv
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1563124197171) (:by |root) (:id |Ek59-q4wPNC)
                      |j $ {} (:text "|\"EDN Grid") (:type :leaf) (:at 1579107271451) (:by |rJG4IHzWf) (:id |7WbOgGcpWrN)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |S04sv1kzs_8
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1563124197171) (:by |root) (:id |MKthIPFQdy1)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/memkits.png") (:type :leaf) (:at 1579107279897) (:by |rJG4IHzWf) (:id |jYUZE7Posja)
                    :type :expr
                    :at 1563124197171
                    :by |root
                    :id |LzVDK4SQhDK
                :type :expr
                :at 1563124197171
                :by |root
                :id |CaV5QSCxfGi
            :type :expr
            :at 1563124197171
            :by |root
            :id |-UXE7i_vIXu
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1563124197171
          :by |root
          :id |erAxQFgoQ5
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1563124197171) (:by |root) (:id |HcDr5svCft)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1563124197171) (:by |root) (:id |SV3cTEYs9O)
          :type :expr
          :at 1563124197171
          :by |root
          :id |5l0C4Jp6RF
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
