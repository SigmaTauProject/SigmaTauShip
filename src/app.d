module main_;
import commonImports;

import world_	.world_	;
import galactic_	.galactic_network_	;
import galactic_	.galactic_mgr_	;
import terminal_	.terminal_network_	;
import terminal_	.ship_	;

import loose_.sleep_ : sleep;
import core.time;

void main() {
	auto galacticNetwork	= new GalacticNetwork	;
	auto terminalNetworkMaster	= new TerminalNetworkMaster	;
	auto world	= new World	;
	auto galacticMgr	= new GalacticMgr(world,galacticNetwork)	;
	auto ship	= new Ship(world)	;
	
	while (true) {
		sleep(200.msecs);
		galacticMgr	.update	( 	);
		auto msgs = ship	.update	( terminalNetworkMaster.getNewTerminals()	);
		galacticMgr	.send	( msgs	);
	}
}

