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
 * Created on 11.07.2006
 */

package org.apache.harmony.vmtt.ir.attributes;

import java.util.ArrayList;

import org.apache.harmony.vmtt.ir.Defined;

/**
 * @author aesin
 */

public class LocalVariableTypeTable extends Attribute {
	
	public class local_variable extends Defined {
		
		public static final byte START_PC			= 0;
		public static final byte LENGTH				= 1;
		public static final byte NAME_INDEX			= 2;
		public static final byte SIGNATURE_INDEX	= 3;
		public static final byte INDEX				= 4;

		private short start_pc;
		private short length;
		private short name_index;
		private short signature_index;
		private short index;
		
		public local_variable() {
			super(5);
		}
		
		public local_variable(short spc, short len, short ni,
				              short di, short in) {
			super(5);
			setStartPC(spc);
			setLength(len);
			setNameIndex(ni);
			setSignatureIndex(di);
			setIndex(in);
		}
		
		public void setStartPC(short spc) {
			start_pc = spc;
			setDefined(START_PC);
		}
		
		public short getStartPC() {
			return start_pc;
		}
		
		public void setLength(short len) {
			length = len;
			setDefined(LENGTH);
		}
		
		public short getLength() {
			return length;
		}
		
		public void setNameIndex(short index) {
			name_index = index;
			setDefined(NAME_INDEX);
		}
		
		public short getNameIndex() {
			return name_index;
		}
		
		public void setSignatureIndex(short index) {
			signature_index = index;
			setDefined(SIGNATURE_INDEX);
		}
		
		public short getSignatureIndex() {
			return signature_index;
		}
		
		public void setIndex(short ind) {
			index = ind;
			setDefined(INDEX);
		}
		
		public short getIndex() {
			return index;
		}
		
		public String toString() {
			String str = Integer.toString(start_pc) + " " +
						 Integer.toString(length) + " " +
						 "#" + Integer.toString(name_index) + " " +
						 "#" + Integer.toString(signature_index) + " " + 
						 Integer.toString(index);
			return str;
		}
	}
	
	public static final int LOCAL_VARIABLE_TYPE_TABLE_LENGTH = 2;

	private short local_variable_type_table_length;
	private ArrayList local_variable_type_table = new ArrayList();
	
	public LocalVariableTypeTable() {
		super(3);
	}
	
	public void setLocalVariableTypeTableLength(short lvttl) {
		local_variable_type_table_length = lvttl;
		setDefined(LOCAL_VARIABLE_TYPE_TABLE_LENGTH);
	}
	
	public short getLocalVariableTypeTableLength() {
		return local_variable_type_table_length;
	}
	
	public void addLocalVariable(local_variable lv) {
		local_variable_type_table.add(lv);
	}
	
	public local_variable localVariableAt(int index) {
		return (local_variable) local_variable_type_table.get(index);
	}
	
	public int getLocalVariableTypeTableSize() {
		return local_variable_type_table.size();
	}
}
