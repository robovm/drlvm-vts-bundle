;    Copyright 2005-2006 The Apache Software Foundation or its licensors, as applicable
;
;    Licensed under the Apache License, Version 2.0 (the "License");
;    you may not use this file except in compliance with the License.
;    You may obtain a copy of the License at
;
;       http://www.apache.org/licenses/LICENSE-2.0
;
;    Unless required by applicable law or agreed to in writing, software
;    distributed under the License is distributed on an "AS IS" BASIS,
;    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;
;    See the License for the specific language governing permissions and
;    limitations under the License.

;
; Author: Maxim V. Makarov
; Version: $Revision: 1.1 $
;

.class public org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface07/invokeinterface0705/invokeinterface0705n
.super org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface07/invokeinterface0705/invokeinterface0705pTest

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface07/invokeinterface0705/invokeinterface0705pTest/<init>()V
   return
.end method 

; test method
.method public testMethod()V
  .limit locals 1
  .limit stack 1

  return
.end method

;
; test method
.method public test([Ljava/lang/String;)I
  .limit locals 2
  .limit stack 2

 .catch java/lang/IncompatibleClassChangeError from L1 to L2 using Handler

L1:
  aload_0
  ; invoke the test method
  invokeinterface org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface07/invokeinterface0705/invokeinterface0705pTest/testMethod()V 1
L2:
  ; test failed
  sipush 105
  ireturn

Handler:
  sipush 104
  ireturn
.end method

;
; standard main function
.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 1
  new org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface07/invokeinterface0705/invokeinterface0705n
  dup
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface07/invokeinterface0705/invokeinterface0705n/<init>()V
  aload_0
  invokevirtual org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface07/invokeinterface0705/invokeinterface0705n/test([Ljava/lang/String;)I
  invokestatic java/lang/System/exit(I)V
  return
.end method
