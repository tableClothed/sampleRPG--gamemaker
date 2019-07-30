//@description create_textbox
//@arg text
//@arg speakers

var tbox = instance_create_layer(0, 0, "Text", oTextbox);

with (tbox){
	text = argument[0];
	speakers = argument[1];
	
	var len = array_length_1d(text);
	var i = 0;
	repeat(len){
		names[i] = speakers[i].name;
		portraits[i] = speakers[i].portraitIndex;
		voices[i] = speakers[i].voice;
		
		i++;
	}
	event_perform(ev_other, ev_user1);
}

return tbox;