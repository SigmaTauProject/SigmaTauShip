module world_.entity_;
import commonImports;

class Entity {
	this() {}
	this(	float[2]	pos	,
		float	ori	,) {
		
		this.pos	= pos	;
		this.ori	= ori	;
	}
	float[2]	pos	;
	float	ori	;
	
	bool inWorld = false;
	bool getInWorld() {
		return inWorld;
	}
}

