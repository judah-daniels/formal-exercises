; SMT-LIBv2 description generated by Yosys 0.18 (git sha1 19ce3b45d6, gcc 11.3.0 -fPIC -Os)
; yosys-smt2-module wbpriarbiter
(declare-sort |wbpriarbiter_s| 0)
(declare-fun |wbpriarbiter_is| (|wbpriarbiter_s|) Bool)
(declare-fun |wbpriarbiter#0| (|wbpriarbiter_s|) (_ BitVec 1)) ; \r_a_owner
; yosys-smt2-register r_a_owner 1
; yosys-smt2-wire r_a_owner 1
(define-fun |wbpriarbiter_n r_a_owner| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1))
(declare-fun |wbpriarbiter#1| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_b_we
(declare-fun |wbpriarbiter#2| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_a_we
(define-fun |wbpriarbiter#3| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#2| state) (|wbpriarbiter#1| state))) ; \o_we
; yosys-smt2-output o_we 1
; yosys-smt2-wire o_we 1
(define-fun |wbpriarbiter_n o_we| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#3| state)) #b1))
(declare-fun |wbpriarbiter#4| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_b_stb
(declare-fun |wbpriarbiter#5| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_a_stb
(define-fun |wbpriarbiter#6| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#5| state) (|wbpriarbiter#4| state))) ; \o_stb
; yosys-smt2-output o_stb 1
; yosys-smt2-wire o_stb 1
(define-fun |wbpriarbiter_n o_stb| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#6| state)) #b1))
(declare-fun |wbpriarbiter#7| (|wbpriarbiter_s|) (_ BitVec 4)) ; \i_b_sel
(declare-fun |wbpriarbiter#8| (|wbpriarbiter_s|) (_ BitVec 4)) ; \i_a_sel
(define-fun |wbpriarbiter#9| ((state |wbpriarbiter_s|)) (_ BitVec 4) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#8| state) (|wbpriarbiter#7| state))) ; \o_sel
; yosys-smt2-output o_sel 4
; yosys-smt2-wire o_sel 4
(define-fun |wbpriarbiter_n o_sel| ((state |wbpriarbiter_s|)) (_ BitVec 4) (|wbpriarbiter#9| state))
(declare-fun |wbpriarbiter#10| (|wbpriarbiter_s|) (_ BitVec 32)) ; \i_b_dat
(declare-fun |wbpriarbiter#11| (|wbpriarbiter_s|) (_ BitVec 32)) ; \i_a_dat
(define-fun |wbpriarbiter#12| ((state |wbpriarbiter_s|)) (_ BitVec 32) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#11| state) (|wbpriarbiter#10| state))) ; \o_dat
; yosys-smt2-output o_dat 32
; yosys-smt2-wire o_dat 32
(define-fun |wbpriarbiter_n o_dat| ((state |wbpriarbiter_s|)) (_ BitVec 32) (|wbpriarbiter#12| state))
(declare-fun |wbpriarbiter#13| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_b_cyc
(declare-fun |wbpriarbiter#14| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_a_cyc
(define-fun |wbpriarbiter#15| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#14| state) (|wbpriarbiter#13| state))) ; \o_cyc
; yosys-smt2-output o_cyc 1
; yosys-smt2-wire o_cyc 1
(define-fun |wbpriarbiter_n o_cyc| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#15| state)) #b1))
(declare-fun |wbpriarbiter#16| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_stall
(define-fun |wbpriarbiter#17| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) #b1 (|wbpriarbiter#16| state))) ; \o_b_stall
; yosys-smt2-output o_b_stall 1
; yosys-smt2-wire o_b_stall 1
(define-fun |wbpriarbiter_n o_b_stall| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#17| state)) #b1))
(declare-fun |wbpriarbiter#18| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_err
(define-fun |wbpriarbiter#19| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) #b0 (|wbpriarbiter#18| state))) ; \o_b_err
; yosys-smt2-output o_b_err 1
; yosys-smt2-wire o_b_err 1
(define-fun |wbpriarbiter_n o_b_err| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#19| state)) #b1))
(declare-fun |wbpriarbiter#20| (|wbpriarbiter_s|) (_ BitVec 1)) ; \i_ack
(define-fun |wbpriarbiter#21| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) #b0 (|wbpriarbiter#20| state))) ; \o_b_ack
; yosys-smt2-output o_b_ack 1
; yosys-smt2-wire o_b_ack 1
(define-fun |wbpriarbiter_n o_b_ack| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#21| state)) #b1))
(declare-fun |wbpriarbiter#22| (|wbpriarbiter_s|) (_ BitVec 32)) ; \i_b_adr
(declare-fun |wbpriarbiter#23| (|wbpriarbiter_s|) (_ BitVec 32)) ; \i_a_adr
(define-fun |wbpriarbiter#24| ((state |wbpriarbiter_s|)) (_ BitVec 32) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#23| state) (|wbpriarbiter#22| state))) ; \o_adr
; yosys-smt2-output o_adr 32
; yosys-smt2-wire o_adr 32
(define-fun |wbpriarbiter_n o_adr| ((state |wbpriarbiter_s|)) (_ BitVec 32) (|wbpriarbiter#24| state))
(define-fun |wbpriarbiter#25| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#16| state) #b1)) ; \o_a_stall
; yosys-smt2-output o_a_stall 1
; yosys-smt2-wire o_a_stall 1
(define-fun |wbpriarbiter_n o_a_stall| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#25| state)) #b1))
(define-fun |wbpriarbiter#26| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#18| state) #b0)) ; \o_a_err
; yosys-smt2-output o_a_err 1
; yosys-smt2-wire o_a_err 1
(define-fun |wbpriarbiter_n o_a_err| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#26| state)) #b1))
(define-fun |wbpriarbiter#27| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) (|wbpriarbiter#20| state) #b0)) ; \o_a_ack
; yosys-smt2-output o_a_ack 1
; yosys-smt2-wire o_a_ack 1
(define-fun |wbpriarbiter_n o_a_ack| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#27| state)) #b1))
; yosys-smt2-input i_stall 1
; yosys-smt2-wire i_stall 1
(define-fun |wbpriarbiter_n i_stall| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#16| state)) #b1))
; yosys-smt2-input i_err 1
; yosys-smt2-wire i_err 1
(define-fun |wbpriarbiter_n i_err| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#18| state)) #b1))
(declare-fun |wbpriarbiter#28| (|wbpriarbiter_s|) Bool) ; \i_clk
; yosys-smt2-input i_clk 1
; yosys-smt2-wire i_clk 1
; yosys-smt2-clock i_clk posedge
(define-fun |wbpriarbiter_n i_clk| ((state |wbpriarbiter_s|)) Bool (|wbpriarbiter#28| state))
; yosys-smt2-input i_b_we 1
; yosys-smt2-wire i_b_we 1
(define-fun |wbpriarbiter_n i_b_we| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#1| state)) #b1))
; yosys-smt2-input i_b_stb 1
; yosys-smt2-wire i_b_stb 1
(define-fun |wbpriarbiter_n i_b_stb| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#4| state)) #b1))
; yosys-smt2-input i_b_sel 4
; yosys-smt2-wire i_b_sel 4
(define-fun |wbpriarbiter_n i_b_sel| ((state |wbpriarbiter_s|)) (_ BitVec 4) (|wbpriarbiter#7| state))
; yosys-smt2-input i_b_dat 32
; yosys-smt2-wire i_b_dat 32
(define-fun |wbpriarbiter_n i_b_dat| ((state |wbpriarbiter_s|)) (_ BitVec 32) (|wbpriarbiter#10| state))
; yosys-smt2-input i_b_cyc 1
; yosys-smt2-wire i_b_cyc 1
(define-fun |wbpriarbiter_n i_b_cyc| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#13| state)) #b1))
; yosys-smt2-input i_b_adr 32
; yosys-smt2-wire i_b_adr 32
(define-fun |wbpriarbiter_n i_b_adr| ((state |wbpriarbiter_s|)) (_ BitVec 32) (|wbpriarbiter#22| state))
; yosys-smt2-input i_ack 1
; yosys-smt2-wire i_ack 1
(define-fun |wbpriarbiter_n i_ack| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#20| state)) #b1))
; yosys-smt2-input i_a_we 1
; yosys-smt2-wire i_a_we 1
(define-fun |wbpriarbiter_n i_a_we| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#2| state)) #b1))
; yosys-smt2-input i_a_stb 1
; yosys-smt2-wire i_a_stb 1
(define-fun |wbpriarbiter_n i_a_stb| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#5| state)) #b1))
; yosys-smt2-input i_a_sel 4
; yosys-smt2-wire i_a_sel 4
(define-fun |wbpriarbiter_n i_a_sel| ((state |wbpriarbiter_s|)) (_ BitVec 4) (|wbpriarbiter#8| state))
; yosys-smt2-input i_a_dat 32
; yosys-smt2-wire i_a_dat 32
(define-fun |wbpriarbiter_n i_a_dat| ((state |wbpriarbiter_s|)) (_ BitVec 32) (|wbpriarbiter#11| state))
; yosys-smt2-input i_a_cyc 1
; yosys-smt2-wire i_a_cyc 1
(define-fun |wbpriarbiter_n i_a_cyc| ((state |wbpriarbiter_s|)) Bool (= ((_ extract 0 0) (|wbpriarbiter#14| state)) #b1))
; yosys-smt2-input i_a_adr 32
; yosys-smt2-wire i_a_adr 32
(define-fun |wbpriarbiter_n i_a_adr| ((state |wbpriarbiter_s|)) (_ BitVec 32) (|wbpriarbiter#23| state))
(define-fun |wbpriarbiter#29| ((state |wbpriarbiter_s|)) Bool (and (or  (= ((_ extract 0 0) (|wbpriarbiter#13| state)) #b1) false) (or  (= ((_ extract 0 0) (|wbpriarbiter#4| state)) #b1) false))) ; $logic_and$wbpriarbiter.v:110$679_Y
(define-fun |wbpriarbiter#30| ((state |wbpriarbiter_s|)) Bool (not (or  (= ((_ extract 0 0) (|wbpriarbiter#14| state)) #b1) false))) ; $logic_not$wbpriarbiter.v:110$680_Y
(define-fun |wbpriarbiter#31| ((state |wbpriarbiter_s|)) Bool (and (or  (|wbpriarbiter#29| state) false) (or  (|wbpriarbiter#30| state) false))) ; $logic_and$wbpriarbiter.v:110$681_Y
(define-fun |wbpriarbiter#32| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (|wbpriarbiter#31| state) #b0 (|wbpriarbiter#0| state))) ; $auto$rtlil.cc:2456:Mux$708
(define-fun |wbpriarbiter#33| ((state |wbpriarbiter_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|wbpriarbiter#13| state)) #b1) (|wbpriarbiter#32| state) #b1)) ; $auto$rtlil.cc:2456:Mux$710
(define-fun |wbpriarbiter_a| ((state |wbpriarbiter_s|)) Bool true)
(define-fun |wbpriarbiter_u| ((state |wbpriarbiter_s|)) Bool true)
(define-fun |wbpriarbiter_i| ((state |wbpriarbiter_s|)) Bool 
  (= (= ((_ extract 0 0) (|wbpriarbiter#0| state)) #b1) true) ; r_a_owner
)
(define-fun |wbpriarbiter_h| ((state |wbpriarbiter_s|)) Bool true)
(define-fun |wbpriarbiter_t| ((state |wbpriarbiter_s|) (next_state |wbpriarbiter_s|)) Bool 
  (= (|wbpriarbiter#33| state) (|wbpriarbiter#0| next_state)) ; $auto$ff.cc:262:slice$706 \r_a_owner
) ; end of module wbpriarbiter
; yosys-smt2-topmod wbpriarbiter
; end of yosys output
