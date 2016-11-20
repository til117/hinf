# hinf
A Hinf control design for an electrical device powered by the 50 Hz (100π rad/s) power grid

Implemented in MATLAB for a control course at KTH.

# Description

In H ∞ control design the sensitivity and complementary sensitivity function are shaped
to meet certain desired speciﬁcations. The main goal here is to get a feeling for
how H ∞ control design can be used to obtain desired speciﬁcations on sensitivity and
robustness.

The Simulink model named servo1.mdl is used to simulate the system. A step
is used as reference and disturbances can be added as band-limited white noise and a
sinusoid. To run the simulation the short macro command, found on the homepage,
can be used. In the beginning of the ﬁle macro.m there are some parameters that can
be changed to customize the simulation. The parameters are described in the m-ﬁle.

To run the macro, the controller and system must ﬁrst be saved as transfer functions
named Fsim and Gsim in workspace. The macro runs the simulation and plots the
results in a new ﬁgure.

Below is an example of a sequence that simulates the system. The system and controller
are assumed to be deﬁned as transfer functions in workspace with the names F and G.

Fsim=F; Gsim=G ;

% Edit parameters in macro.m

macro

Now the simulation should start and plot the results when ready.

# Input system

The system to control in this lab is an electrical device powered by the 50 Hz (100π rad/s)
power grid.

# Instructions

Just run the MainFile.m
