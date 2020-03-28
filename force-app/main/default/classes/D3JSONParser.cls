public class D3JSONParser {
	public static void consumeObject(JSONParser parser) {
		Integer depth = 0;
		do {
			JSONToken curr = parser.getCurrentToken();
			if (curr == JSONToken.START_OBJECT || 
				curr == JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == JSONToken.END_OBJECT ||
				curr == JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}

	public class Children_X {
		public String name {get;set;}
		public Integer size {get;set;}
		public Integer sign {get;set;}
		public List<Children_Y> children {get;set;}

		public Children_X(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'size') {
							size = parser.getIntegerValue();
						} else if (text == 'sign') {
							sign = parser.getIntegerValue();
						} else if (text == 'children') {
							children = new List<Children_Y>();
							while (parser.nextToken() != JSONToken.END_ARRAY) {
								children.add(new Children_Y(parser));
							}
						} else {
							System.debug(LoggingLevel.WARN, 'Children_X consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Children_Y {
		public String name {get;set;}
		public Integer size {get;set;}
		public Integer sign {get;set;}
		public List<Children_Z> children {get;set;}

		public Children_Y(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'size') {
							size = parser.getIntegerValue();
						} else if (text == 'sign') {
							sign = parser.getIntegerValue();
						} else if (text == 'children') {
							children = new List<Children_Z>();
							while (parser.nextToken() != JSONToken.END_ARRAY) {
								children.add(new Children_Z(parser));
							}
						} else {
							System.debug(LoggingLevel.WARN, 'Children_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Children_Z {
		public String name {get;set;}
		public Double size {get;set;}
		public Double sign {get;set;}
		public List<Children> children {get;set;}

		public Children_Z(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'size') {
							size = parser.getDoubleValue();
						} else if (text == 'sign') {
							sign = parser.getDoubleValue();
						} else if (text == 'children') {
							children = new List<Children>();
							while (parser.nextToken() != JSONToken.END_ARRAY) {
								children.add(new Children(parser));
							}
						} else {
							System.debug(LoggingLevel.WARN, 'Children_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String name {get;set;}
	public String size {get;set;}
	public List<Children_X> children {get;set;}

	public D3JSONParser(JSONParser parser) {
		while (parser.nextToken() != JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != JSONToken.VALUE_NULL) {
					if (text == 'name') {
						name = parser.getText();
					} else if (text == 'size') {
						size = parser.getText();
					} else if (text == 'children') {
						children = new List<Children_X>();
						while (parser.nextToken() != JSONToken.END_ARRAY) {
							children.add(new Children_X(parser));
						}
					} else {
						System.debug(LoggingLevel.WARN, 'Root consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Children {

		public Children(JSONParser parser) {
			while (parser.nextToken() != JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != JSONToken.VALUE_NULL) {
						{
							System.debug(LoggingLevel.WARN, 'Children consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static D3JSONParser parse(String json) {
		return new D3JSONParser(System.JSON.createParser(json));
	}

}