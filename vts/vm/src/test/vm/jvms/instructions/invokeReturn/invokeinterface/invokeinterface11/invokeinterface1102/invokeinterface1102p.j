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
; Version: $Revision: 1.3 $
;

.class public org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102p
.super java/lang/Object
.implements org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102pInterface

.field public static testField I = 105

.field public interfaceField Lorg/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102pInterface;

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method 

; native method
.method public native nativeMethod()V
.end method 

;
; test method
.method public test([Ljava/lang/String;)I
  .limit locals 2
  .limit stack 2

  ; System.loadLibrary("jnitests")
  ldc "jnitests"
  invokestatic java/lang/System/loadLibrary(Ljava/lang/String;)V

  aload_0
  dup

  putfield org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102p/interfaceField Lorg/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102pInterface;
  aload_0
  getfield org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102p/interfaceField Lorg/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102pInterface;

  ; invoke the native method
  invokeinterface org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102pInterface/nativeMethod()V 1

  getstatic org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102p/testField I
  ; test passed
  ireturn
.end method

;
; standard main function
.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 1
  new org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102p
  dup
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102p/<init>()V
  aload_0
  invokevirtual org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokeinterface/invokeinterface11/invokeinterface1102/invokeinterface1102p/test([Ljava/lang/String;)I
  invokestatic java/lang/System/exit(I)V
  return
.end method
