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
; Version: $Revision: 1.1.1.1 $
;

.class public org/apache/harmony/vts/test/vm/jvms/instructions/reftypes/putstatic/putstatic25/putstatic2508/putstatic2508p
.super java/lang/Object

.field public static testField I

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method 

;
; test method
.method public static test()V
  .limit locals 4
  .limit stack 4

  lconst_1
  ; trying to put long to the field, must throw java/lang/VerifyError 
  putstatic org/apache/harmony/vts/test/vm/jvms/instructions/reftypes/putstatic/putstatic25/putstatic2508/putstatic2508p/testField I

  return
.end method

