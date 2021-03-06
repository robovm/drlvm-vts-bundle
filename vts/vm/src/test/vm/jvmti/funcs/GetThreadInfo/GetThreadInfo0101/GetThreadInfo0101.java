/*
    Copyright 2005-2006 The Apache Software Foundation or its licensors, as applicable

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

    See the License for the specific language governing permissions and
    limitations under the License.
*/
package org.apache.harmony.vts.test.vm.jvmti;

/** 
 * @author Valentin Al. Sitnick
 * @version $Revision: 1.1 $
 *
 */ 
public class GetThreadInfo0101 {

    static public void main(String args[]) {
        TestThread_T_09 thread = new TestThread_T_09("SuperPuperTest");

        thread.start();
        killThread(thread);
        return;        
    }

    public static void killThread(TestThread_T_09 thread) {
        thread.stop = true;
        try {
            thread.join();
        } catch (Throwable tex) {
            System.err.print("Exception was encountered during thread join :" + tex);
        }
    }
}

class TestThread_T_09 extends Thread {

    boolean stop = false;
    
    TestThread_T_09(String name) {
        super(name);
    }    
    
    public void run() {
        for (int i = 0; ; ) {
            if (stop) {
                break;
            }
        }
    }
}

