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
; Author: Maxim N. Kurzenev
; Version: $Revision: 1.2 $
;

.source threads10101p.j
.class public org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p
.super java/lang/Object

.field  v I

.method public <init>()V
    .limit stack 2
    .limit locals 1
    aload_0
    invokespecial java/lang/Object/<init>()V
    aload_0
    iconst_0
    putfield org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p/v I
    return
.end method

.method public test([Ljava/lang/String;)I
    .limit stack 3
    .limit locals 4

    .throws java/lang/InterruptedException

    ;        Thread t1 = new threads10101p$1();
    new org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p$1
    dup
    aload_0
    invokespecial org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p$1/<init>(Lorg/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p;)V
    astore_2
    ;        Object lock = new Object();
    new java/lang/Object
    dup
    invokespecial java/lang/Object/<init>()V
    astore_3
    ;        synchronized (this) {
    aload_0
    monitorenter
    ;            t1.start();
    aload_2
    invokevirtual java/lang/Thread/start()V
    ;            v = 13;
    aload_0
    bipush 13
    putfield org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p/v I
    ;            this.wait();
    ;        }
    aload_0
    invokevirtual java/lang/Object/wait()V
    aload_0
    monitorexit
    ;        synchronized(lock) { // trigger 101
    aload_3
    monitorenter
    ;            return v == 37 ? 104 : 105;
    ;        }
    aload_0
    getfield org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p/v I
    bipush 37
    if_icmpne Failed
    bipush 104
    goto End
Failed:
    bipush 105
End:
    aload_3
    monitorexit
    ireturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 2
    .limit locals 1

    .throws java/lang/InterruptedException

    new org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p
    dup
    invokespecial org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p/<init>()V
    aload_0
    invokevirtual org/apache/harmony/vts/test/vm/jvms/threads/threads110/threads10101/threads10101p/test([Ljava/lang/String;)I
    invokestatic java/lang/System/exit(I)V
    return
.end method
