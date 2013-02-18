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
; Author: Ilia A. Leviev
; Version: $Revision: 1.1.1.1 $
;

.class org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokestatic/invokestatic15/invokestatic1501/invokestatic1501

.super java/lang/Object
; static field 

; static initializer
.method static <clinit>()V
  .limit stack 2
  .limit locals 1

  new java/lang/Throwable
  dup   
  invokespecial java/lang/Throwable/<init>()V
  athrow     
    
   return
.end method

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static test1(I)I
   .limit stack 2
   .limit locals 1
   iload 0
   ireturn
.end method


