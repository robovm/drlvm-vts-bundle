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
/*
 * Created on 05.06.2006
 *
 */
package org.apache.harmony.vmtt.ir.attributes;

/**
 * @author aesin
 *
 */
public class ElementValuePair {

	
	private short element_name_index;
	private ElementValue elementValue;
	
	/**
	 * @param parameters_count
	 */
	public ElementValuePair() {
	}
	
	public void setElementNameIndex(short element_name_index) {
		this.element_name_index = element_name_index;
	}
	
	public short getElementNameIndex() {
		return element_name_index;
	}
	
	public void setElementValue(ElementValue elementValue) {
		this.elementValue = elementValue;
	}
	
	public ElementValue getElementValue() {
		return elementValue;
	}

}
