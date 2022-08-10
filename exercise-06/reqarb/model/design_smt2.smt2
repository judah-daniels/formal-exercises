; SMT-LIBv2 description generated by Yosys 0.18 (git sha1 19ce3b45d6, gcc 11.3.0 -fPIC -Os)
; yosys-smt2-module reqarb
(declare-sort |reqarb_s| 0)
(declare-fun |reqarb_is| (|reqarb_s|) Bool)
(declare-fun |reqarb#0| (|reqarb_s|) (_ BitVec 1)) ; \i_b_req
(declare-fun |reqarb#1| (|reqarb_s|) (_ BitVec 1)) ; \i_a_req
(declare-fun |reqarb#2| (|reqarb_s|) (_ BitVec 1)) ; \a_is_the_owner
(define-fun |reqarb#3| ((state |reqarb_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|reqarb#2| state)) #b1) (|reqarb#1| state) (|reqarb#0| state))) ; \o_req
; yosys-smt2-output o_req 1
; yosys-smt2-wire o_req 1
(define-fun |reqarb_n o_req| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#3| state)) #b1))
(declare-fun |reqarb#4| (|reqarb_s|) (_ BitVec 1)) ; \i_b_data
(declare-fun |reqarb#5| (|reqarb_s|) (_ BitVec 1)) ; \i_a_data
(define-fun |reqarb#6| ((state |reqarb_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|reqarb#2| state)) #b1) (|reqarb#5| state) (|reqarb#4| state))) ; \o_data
; yosys-smt2-output o_data 1
; yosys-smt2-wire o_data 1
(define-fun |reqarb_n o_data| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#6| state)) #b1))
(declare-fun |reqarb#7| (|reqarb_s|) Bool) ; \i_busy
(define-fun |reqarb#8| ((state |reqarb_s|)) Bool (or  (= ((_ extract 0 0) (|reqarb#2| state)) #b1) false  (|reqarb#7| state) false)) ; \o_b_busy
; yosys-smt2-output o_b_busy 1
; yosys-smt2-wire o_b_busy 1
(define-fun |reqarb_n o_b_busy| ((state |reqarb_s|)) Bool (|reqarb#8| state))
(define-fun |reqarb#9| ((state |reqarb_s|)) Bool (not (or  (= ((_ extract 0 0) (|reqarb#2| state)) #b1) false))) ; $logic_not$reqarb.v:99$14_Y
(define-fun |reqarb#10| ((state |reqarb_s|)) Bool (or  (|reqarb#9| state) false  (|reqarb#7| state) false)) ; \o_a_busy
; yosys-smt2-output o_a_busy 1
; yosys-smt2-wire o_a_busy 1
(define-fun |reqarb_n o_a_busy| ((state |reqarb_s|)) Bool (|reqarb#10| state))
(declare-fun |reqarb#11| (|reqarb_s|) Bool) ; \i_reset
; yosys-smt2-input i_reset 1
; yosys-smt2-wire i_reset 1
(define-fun |reqarb_n i_reset| ((state |reqarb_s|)) Bool (|reqarb#11| state))
(declare-fun |reqarb#12| (|reqarb_s|) Bool) ; \i_clk
; yosys-smt2-input i_clk 1
; yosys-smt2-wire i_clk 1
; yosys-smt2-clock i_clk posedge
(define-fun |reqarb_n i_clk| ((state |reqarb_s|)) Bool (|reqarb#12| state))
; yosys-smt2-input i_busy 1
; yosys-smt2-wire i_busy 1
(define-fun |reqarb_n i_busy| ((state |reqarb_s|)) Bool (|reqarb#7| state))
; yosys-smt2-input i_b_req 1
; yosys-smt2-wire i_b_req 1
(define-fun |reqarb_n i_b_req| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#0| state)) #b1))
; yosys-smt2-input i_b_data 1
; yosys-smt2-wire i_b_data 1
(define-fun |reqarb_n i_b_data| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#4| state)) #b1))
; yosys-smt2-input i_a_req 1
; yosys-smt2-wire i_a_req 1
(define-fun |reqarb_n i_a_req| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#1| state)) #b1))
; yosys-smt2-input i_a_data 1
; yosys-smt2-wire i_a_data 1
(define-fun |reqarb_n i_a_data| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#5| state)) #b1))
; yosys-smt2-register a_is_the_owner 1
; yosys-smt2-wire a_is_the_owner 1
(define-fun |reqarb_n a_is_the_owner| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#2| state)) #b1))
(declare-fun |reqarb#13| (|reqarb_s|) (_ BitVec 1)) ; $past$reqarb.v:122$3$0
; yosys-smt2-register $past$reqarb.v:122$3$0 1
(define-fun |reqarb_n $past$reqarb.v:122$3$0| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#13| state)) #b1))
(declare-fun |reqarb#14| (|reqarb_s|) (_ BitVec 1)) ; $past$reqarb.v:119$2$0
; yosys-smt2-register $past$reqarb.v:119$2$0 1
(define-fun |reqarb_n $past$reqarb.v:119$2$0| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#14| state)) #b1))
(declare-fun |reqarb#15| (|reqarb_s|) (_ BitVec 1)) ; $past$reqarb.v:116$1$0
; yosys-smt2-register $past$reqarb.v:116$1$0 1
(define-fun |reqarb_n $past$reqarb.v:116$1$0| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#15| state)) #b1))
(declare-fun |reqarb#16| (|reqarb_s|) (_ BitVec 1)) ; $formal$reqarb.v:126$8_EN
; yosys-smt2-register $formal$reqarb.v:126$8_EN 1
(define-fun |reqarb_n $formal$reqarb.v:126$8_EN| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#16| state)) #b1))
(declare-fun |reqarb#17| (|reqarb_s|) (_ BitVec 1)) ; $formal$reqarb.v:126$8_CHECK
; yosys-smt2-register $formal$reqarb.v:126$8_CHECK 1
(define-fun |reqarb_n $formal$reqarb.v:126$8_CHECK| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#17| state)) #b1))
(declare-fun |reqarb#18| (|reqarb_s|) (_ BitVec 1)) ; $formal$reqarb.v:121$7_EN
; yosys-smt2-register $formal$reqarb.v:121$7_EN 1
(define-fun |reqarb_n $formal$reqarb.v:121$7_EN| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#18| state)) #b1))
(declare-fun |reqarb#19| (|reqarb_s|) (_ BitVec 1)) ; $formal$reqarb.v:121$7_CHECK
; yosys-smt2-register $formal$reqarb.v:121$7_CHECK 1
(define-fun |reqarb_n $formal$reqarb.v:121$7_CHECK| ((state |reqarb_s|)) Bool (= ((_ extract 0 0) (|reqarb#19| state)) #b1))
; yosys-smt2-anyseq reqarb#20 1 $auto$setundef.cc:501:execute$99
(declare-fun |reqarb#20| (|reqarb_s|) (_ BitVec 1)) ; $auto$rtlil.cc:3130:Anyseq$100
(define-fun |reqarb#21| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#0| state)) #b1) false) (or  (= ((_ extract 0 0) (|reqarb#4| state)) #b1) false))) ; $0$past$reqarb.v:119$2$0[0:0]$25
(define-fun |reqarb#22| ((state |reqarb_s|)) Bool (= (|reqarb#14| state) (ite (|reqarb#21| state) #b1 #b0))) ; $eq$reqarb.v:119$40_Y
(define-fun |reqarb#23| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#0| state)) #b1) false) (or  (|reqarb#8| state) false))) ; $logic_and$reqarb.v:118$37_Y
(define-fun |reqarb#24| ((state |reqarb_s|)) Bool (or  (|reqarb#23| state) false  (|reqarb#7| state) false)) ; $logic_or$reqarb.v:118$38_Y
(define-fun |reqarb#25| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#24| state) (ite (|reqarb#22| state) #b1 #b0) (|reqarb#20| state))) ; $0$formal$reqarb.v:118$6_CHECK[0:0]$29
(define-fun |reqarb#26| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#24| state) #b1 #b0)) ; $0$formal$reqarb.v:118$6_EN[0:0]$30
; yosys-smt2-assume 0 $assume$reqarb.v:118$53 reqarb.v:118.49-119.49
(define-fun |reqarb_u 0| ((state |reqarb_s|)) Bool (or (= ((_ extract 0 0) (|reqarb#25| state)) #b1) (not (= ((_ extract 0 0) (|reqarb#26| state)) #b1)))) ; $assume$reqarb.v:118$53
; yosys-smt2-anyseq reqarb#27 1 $auto$setundef.cc:501:execute$97
(declare-fun |reqarb#27| (|reqarb_s|) (_ BitVec 1)) ; $auto$rtlil.cc:3130:Anyseq$98
(define-fun |reqarb#28| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#1| state)) #b1) false) (or  (= ((_ extract 0 0) (|reqarb#5| state)) #b1) false))) ; $0$past$reqarb.v:116$1$0[0:0]$24
(define-fun |reqarb#29| ((state |reqarb_s|)) Bool (= (|reqarb#15| state) (ite (|reqarb#28| state) #b1 #b0))) ; $eq$reqarb.v:116$36_Y
(define-fun |reqarb#30| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#1| state)) #b1) false) (or  (|reqarb#10| state) false))) ; $logic_and$reqarb.v:115$33_Y
(define-fun |reqarb#31| ((state |reqarb_s|)) Bool (or  (|reqarb#30| state) false  (|reqarb#7| state) false)) ; $logic_or$reqarb.v:115$34_Y
(define-fun |reqarb#32| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#31| state) (ite (|reqarb#29| state) #b1 #b0) (|reqarb#27| state))) ; $0$formal$reqarb.v:115$5_CHECK[0:0]$27
(define-fun |reqarb#33| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#31| state) #b1 #b0)) ; $0$formal$reqarb.v:115$5_EN[0:0]$28
; yosys-smt2-assume 1 $assume$reqarb.v:115$52 reqarb.v:115.49-116.49
(define-fun |reqarb_u 1| ((state |reqarb_s|)) Bool (or (= ((_ extract 0 0) (|reqarb#32| state)) #b1) (not (= ((_ extract 0 0) (|reqarb#33| state)) #b1)))) ; $assume$reqarb.v:115$52
(define-fun |reqarb#34| ((state |reqarb_s|)) Bool (not (or  (|reqarb#7| state) false))) ; $0$formal$reqarb.v:111$4_CHECK[0:0]$20
; yosys-smt2-assume 2 $assume$reqarb.v:111$51 reqarb.v:111.16-112.24
(define-fun |reqarb_u 2| ((state |reqarb_s|)) Bool (or (|reqarb#34| state) (not true))) ; $assume$reqarb.v:111$51
; yosys-smt2-assert 0 $assert$reqarb.v:126$55 reqarb.v:126.34-127.42
(define-fun |reqarb_a 0| ((state |reqarb_s|)) Bool (or (= ((_ extract 0 0) (|reqarb#17| state)) #b1) (not (= ((_ extract 0 0) (|reqarb#16| state)) #b1)))) ; $assert$reqarb.v:126$55
; yosys-smt2-assert 1 $assert$reqarb.v:121$54 reqarb.v:121.35-122.45
(define-fun |reqarb_a 1| ((state |reqarb_s|)) Bool (or (= ((_ extract 0 0) (|reqarb#19| state)) #b1) (not (= ((_ extract 0 0) (|reqarb#18| state)) #b1)))) ; $assert$reqarb.v:121$54
; yosys-smt2-anyseq reqarb#35 1 $auto$setundef.cc:501:execute$101
(declare-fun |reqarb#35| (|reqarb_s|) (_ BitVec 1)) ; $auto$rtlil.cc:3130:Anyseq$102
(define-fun |reqarb#36| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#3| state)) #b1) false) (or  (= ((_ extract 0 0) (|reqarb#6| state)) #b1) false))) ; $0$past$reqarb.v:122$3$0[0:0]$26
(define-fun |reqarb#37| ((state |reqarb_s|)) Bool (= (|reqarb#13| state) (ite (|reqarb#36| state) #b1 #b0))) ; $eq$reqarb.v:122$43_Y
(define-fun |reqarb#38| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#3| state)) #b1) false) (or  (|reqarb#7| state) false))) ; $logic_and$reqarb.v:121$41_Y
(define-fun |reqarb#39| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#38| state) (ite (|reqarb#37| state) #b1 #b0) (|reqarb#35| state))) ; $0$formal$reqarb.v:121$7_CHECK[0:0]$31
(define-fun |reqarb#40| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#38| state) #b1 #b0)) ; $0$formal$reqarb.v:121$7_EN[0:0]$32
(define-fun |reqarb#41| ((state |reqarb_s|)) Bool (or  (|reqarb#10| state) false  (|reqarb#8| state) false)) ; $0$formal$reqarb.v:126$8_CHECK[0:0]$48
(define-fun |reqarb#42| ((state |reqarb_s|)) Bool (not (or  (= ((_ extract 0 0) (|reqarb#1| state)) #b1) false))) ; $logic_not$reqarb.v:96$12_Y
(define-fun |reqarb#43| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#0| state)) #b1) false) (or  (|reqarb#42| state) false))) ; $logic_and$reqarb.v:96$13_Y
(define-fun |reqarb#44| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#43| state) #b0 #b0)) ; $procmux$77_Y
(define-fun |reqarb#45| ((state |reqarb_s|)) Bool (not (or  (= ((_ extract 0 0) (|reqarb#0| state)) #b1) false))) ; $logic_not$reqarb.v:94$10_Y
(define-fun |reqarb#46| ((state |reqarb_s|)) Bool (and (or  (= ((_ extract 0 0) (|reqarb#1| state)) #b1) false) (or  (|reqarb#45| state) false))) ; $logic_and$reqarb.v:94$11_Y
(define-fun |reqarb#47| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#46| state) #b1 (|reqarb#44| state))) ; $procmux$80_Y
(define-fun |reqarb#48| ((state |reqarb_s|)) Bool (or  (|reqarb#46| state) (|reqarb#43| state))) ; $auto$opt_dff.cc:194:make_patterns_logic$105
(define-fun |reqarb#49| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#48| state) (|reqarb#47| state) (|reqarb#2| state))) ; $auto$rtlil.cc:2456:Mux$108
(define-fun |reqarb#50| ((state |reqarb_s|)) (_ BitVec 1) (ite (|reqarb#11| state) #b0 (|reqarb#49| state))) ; $auto$rtlil.cc:2456:Mux$110
(define-fun |reqarb_a| ((state |reqarb_s|)) Bool (and
  (|reqarb_a 0| state)
  (|reqarb_a 1| state)
))
(define-fun |reqarb_u| ((state |reqarb_s|)) Bool (and
  (|reqarb_u 0| state)
  (|reqarb_u 1| state)
  (|reqarb_u 2| state)
))
(define-fun |reqarb_i| ((state |reqarb_s|)) Bool (and
  (= (= ((_ extract 0 0) (|reqarb#2| state)) #b1) false) ; a_is_the_owner
  (= (= ((_ extract 0 0) (|reqarb#16| state)) #b1) false) ; $formal$reqarb.v:126$8_EN
  (= (= ((_ extract 0 0) (|reqarb#18| state)) #b1) false) ; $formal$reqarb.v:121$7_EN
))
(define-fun |reqarb_h| ((state |reqarb_s|)) Bool true)
(define-fun |reqarb_t| ((state |reqarb_s|) (next_state |reqarb_s|)) Bool (and
  (= (|reqarb#39| state) (|reqarb#19| next_state)) ; $procdff$94 $formal$reqarb.v:121$7_CHECK
  (= (|reqarb#40| state) (|reqarb#18| next_state)) ; $procdff$95 $formal$reqarb.v:121$7_EN
  (= (ite (|reqarb#41| state) #b1 #b0) (|reqarb#17| next_state)) ; $procdff$85 $formal$reqarb.v:126$8_CHECK
  (= #b1 (|reqarb#16| next_state)) ; $procdff$86 $formal$reqarb.v:126$8_EN
  (= (ite (|reqarb#28| state) #b1 #b0) (|reqarb#15| next_state)) ; $procdff$87 $past$reqarb.v:116$1$0
  (= (ite (|reqarb#21| state) #b1 #b0) (|reqarb#14| next_state)) ; $procdff$88 $past$reqarb.v:119$2$0
  (= (ite (|reqarb#36| state) #b1 #b0) (|reqarb#13| next_state)) ; $procdff$89 $past$reqarb.v:122$3$0
  (= (|reqarb#50| state) (|reqarb#2| next_state)) ; $auto$ff.cc:262:slice$104 \a_is_the_owner
)) ; end of module reqarb
; yosys-smt2-topmod reqarb
; end of yosys output
