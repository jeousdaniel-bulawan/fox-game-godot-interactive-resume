shader_type canvas_item;

uniform float skew = 0;

void vertex() {
	VERTEX.x += (1.0-UV.y) * skew;
}



//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
