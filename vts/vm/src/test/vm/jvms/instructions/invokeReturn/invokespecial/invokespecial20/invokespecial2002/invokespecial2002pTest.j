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

.class public org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokespecial/invokespecial20/invokespecial2002/invokespecial2002pTest
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method


.method public <aaa()V
   
   return
.end method


.method static test1()I
  .limit stack 2
   .limit locals 2

  new org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokespecial/invokespecial20/invokespecial2002/invokespecial2002pTest
  dup
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokespecial/invokespecial20/invokespecial2002/invokespecial2002pTest/<init>()V
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/invokeReturn/invokespecial/invokespecial20/invokespecial2002/invokespecial2002pTest/<aaa()V
  sipush 105
  ireturn
.end method
