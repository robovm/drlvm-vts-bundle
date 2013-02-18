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
/** 
 * @author Gregory Shimansky, Petr Ivanov
 * @version $Revision: 1.3 $
 */  
/*
 * Created on 19.11.2004
 */
package org.apache.harmony.vts.test.vm.jni.array_operations;

import org.apache.harmony.vts.test.vm.jni.share.JNITest;

/**
 * @author Gregory Shimansky
 *
 * Test for NewBooleanArray function.
 */
public class NewBooleanArrayTest extends JNITest {
    private native Object nativeExecute(int length);

    /**
     * Test calls native code that creates array of specified
     * length. Test checks array class and length.
     * @see org.apache.harmony.vts.test.vm.jni.share.JNITest#execute()
     */
    public boolean execute() throws Exception {
        int length = 10;
        Object o = nativeExecute(length);

        if (o.getClass() != boolean[].class)
            return false;

        if (((boolean[])o).length != length)
            return false;

        return true;
    }
    public static void main(String[] args){
        System.exit(new NewBooleanArrayTest().test());
    }
}