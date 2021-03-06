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
; Version: $Revision: 1.2 $
;

.class public org/apache/harmony/vts/test/vm/jvms/instructions/reftypes/aastore/aastore12/aastore1201/aastore1201p
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method 

;
; test method
.method public test([Ljava/lang/String;)I
    .limit locals 4
    .limit stack 3

    ; create a new array of aastore1201p
    ;       aastore1201p[] s = new aastore1201p[4]
    ;
    iconst_4
    anewarray org/apache/harmony/vts/test/vm/jvms/instructions/reftypes/aastore/aastore12/aastore1201/aastore1201p
    astore_2 ; stores arrayref in local variable 2

    ; create a new array of Object
    ;       Object[] t = new Object[10]
    ;       t[0] = s
    ;
    bipush  10
    anewarray java/lang/Object
    astore_3 ; stores arrayref in local variable 3
    aload_3
    iconst_0
    aload_2
    aastore

    ; check that value t[0] is not equal s
    aload_3
    iconst_0
    aaload
    aload_2
    if_acmpne Fail
    ; test passed
    sipush 104
    ireturn
 Fail:
    ; test failed
    sipush 105
    ireturn

.end method

;
; standard main function
.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 1
  new org/apache/harmony/vts/test/vm/jvms/instructions/reftypes/aastore/aastore12/aastore1201/aastore1201p
  dup
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/reftypes/aastore/aastore12/aastore1201/aastore1201p/<init>()V
  aload_0
  invokevirtual org/apache/harmony/vts/test/vm/jvms/instructions/reftypes/aastore/aastore12/aastore1201/aastore1201p/test([Ljava/lang/String;)I
  invokestatic java/lang/System/exit(I)V
  return
.end method
