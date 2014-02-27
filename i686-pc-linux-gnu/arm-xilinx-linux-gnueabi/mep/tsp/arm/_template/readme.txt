A MESP Target Initialization file is required when setting up the
MESP debug launch in CodeBench.

The template.maj file in this directory may be used as a template for
creating a custom initialization file suitable for your target.

Note: If your target is a close derivative of a reference platform
      for which a sample target initialization file already exists,
      then it might be easier to start from the reference board
      initialization file from than an empty template.

OVERVIEW
========

There are two main parts to the initialization process:

1.  Basic "One-Time Setup" and MESP initialization required to enable the
JTAG interface, taking the details of your hardware design into account.

As shipped, the template.maj file in this directory should be suitable
if your target board conforms to the details in the "MESP Interface
Specifications" application note, and your SoC has no special JTAG
initialization requirements.

However, if your target board differs from the recommendations in the
"MESP Interface Specifications" application note, or if your SoC has
special JTAG initialization requirements, then you may need to adjust
some of the template's options accordingly.

Note: The template only includes the small subset of options that are most
often required.  Special case options may be required on some target
boards.  The Mentor Embedded User's Manuals section "Configuration Option
Tables" provides a comprehensive list of all configuratino options.

2.  After the basic "One-Time Setup", you may want to run some target
reset and/or initialization script to preset an environment appropriate
for the debug scenario.   If you have a board with working boot code,
or you want to debug the boot code in flash, then you may not need to
modify this part at first.

However, if you want to download code into RAM without relying on the
board's boot code, or your board requires some other special hardware
initialization, or you just want to customize the environment, then this
file is the right place to manage those details.


PROCEDURE
=========

1. Copy either the template.maj or the MESP/Target initialization file
from your reference board, and save as a new file name matching your
board name.

2. Edit the new board init file and follow the comments at the top to
the points where adjustments are required.

3. Once the new initialization file is ready, simply reference it in the
CodeBench launch settings (Debugger -> ARM Settings tab) Commandfile box.


