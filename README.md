fill in longCriteriaMet() and shortCriteriaMet() in order to hook the strategy into the trading system
include the global variables as in the strategy which is hooked in


SOURCE CODE DIRECTORY

ticketObject contains a tsl, ttp, etc, enabled objects (inherited from base ticketObject class)
algorithms include various trading algorithms

set checking frequency


trading objects should have magic number identifiers

tradeLib should be generic, use to conduct static functionality

UTS7.30 Unified Trading System 7.30

included files will hook into the system interface file via an include. long entry, short entry, short exit, and long exit criteria must be defined, as well as entry algorithm and exit algorithms.

maintenance margin checks during running of program? like, if it checks strategy details every 24 hours, run margin checks every 30 mins?
and set limits on max and min running of the strat?

