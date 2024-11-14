% Simscape(TM) Multibody(TM) version: 7.6

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(17).translation = [0.0 0.0 0.0];
smiData.RigidTransform(17).angle = 0.0;
smiData.RigidTransform(17).axis = [0.0 0.0 0.0];
smiData.RigidTransform(17).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [64 5 0];  % cm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = "B[Link1-1:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-50.000000000000412 5.0000000000000782 -3.4283687000424834e-13];  % cm
smiData.RigidTransform(2).angle = 2.0943951023931944;  % rad
smiData.RigidTransform(2).axis = [0.5773502691896254 -0.5773502691896254 0.57735026918962651];
smiData.RigidTransform(2).ID = "F[Link1-1:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-64 5 0];  % cm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "B[Link1-1:-:Cyliner-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [3.3654271376750933e-14 100.00000000000031 4.9999999999999467];  % cm
smiData.RigidTransform(4).angle = 3.1415926535897922;  % rad
smiData.RigidTransform(4).axis = [-1 -7.0896868837103275e-32 1.7104100109513056e-16];
smiData.RigidTransform(4).ID = "F[Link1-1:-:Cyliner-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [49.999999999999986 5.0000000000000009 -1.8367696940747635e-14];  % cm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(5).ID = "B[Link2-1:-:Link1-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [64.000000000000497 -5.0000000000000497 -2.8332891588433995e-13];  % cm
smiData.RigidTransform(6).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(6).axis = [-0.57735026918962573 -0.57735026918962562 -0.57735026918962573];
smiData.RigidTransform(6).ID = "F[Link2-1:-:Link1-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-64.000000000000028 5.0000000000000027 1.1102230246251565e-14];  % cm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(7).ID = "B[Link1-2:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [50.000000000000185 4.9999999999999618 9.0594198809412774e-14];  % cm
smiData.RigidTransform(8).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(8).axis = [0.57735026918962562 -0.57735026918962595 0.57735026918962584];
smiData.RigidTransform(8).ID = "F[Link1-2:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-50 5 0];  % cm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(9).ID = "B[Link2-1:-:Cyliner-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-2.7609795249366776e-13 100 -5.0000000000000595];  % cm
smiData.RigidTransform(10).angle = 1.8983404983994237e-16;  % rad
smiData.RigidTransform(10).axis = [0.15969642443468732 0.98716617244655225 1.4963375501133295e-17];
smiData.RigidTransform(10).ID = "F[Link2-1:-:Cyliner-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [-50.000000000000014 5 2.2204460492503131e-14];  % cm
smiData.RigidTransform(11).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(11).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(11).ID = "B[Link2-2:-:End-effector-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [-67.500000000000625 -5.0000000000000098 -1.3322676295501878e-14];  % cm
smiData.RigidTransform(12).angle = 2.0943951023931948;  % rad
smiData.RigidTransform(12).axis = [-0.57735026918962629 -0.57735026918962551 -0.57735026918962551];
smiData.RigidTransform(12).ID = "F[Link2-2:-:End-effector-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 100 0];  % cm
smiData.RigidTransform(13).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(13).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(13).ID = "B[Cyliner-1:-:Base-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [-5.0751705955978343e-14 150 0];  % cm
smiData.RigidTransform(14).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(14).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(14).ID = "F[Cyliner-1:-:Base-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [0 0 0];  % cm
smiData.RigidTransform(15).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(15).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(15).ID = "B[Cyliner-1:-:]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [-5.0751705955978343e-14 -100 0];  % cm
smiData.RigidTransform(16).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(16).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(16).ID = "F[Cyliner-1:-:]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [0 -150 0];  % cm
smiData.RigidTransform(17).angle = 0;  % rad
smiData.RigidTransform(17).axis = [0 0 0];
smiData.RigidTransform(17).ID = "RootGround[Base-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(5).mass = 0.0;
smiData.Solid(5).CoM = [0.0 0.0 0.0];
smiData.Solid(5).MoI = [0.0 0.0 0.0];
smiData.Solid(5).PoI = [0.0 0.0 0.0];
smiData.Solid(5).color = [0.0 0.0 0.0];
smiData.Solid(5).opacity = 0.0;
smiData.Solid(5).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 3607.3009183012755;  % kg
smiData.Solid(1).CoM = [0 472.78442451900776 0];  % mm
smiData.Solid(1).MoI = [1606726167.7107806 2617579281.4543257 1606726167.7107804];  % kg*mm^2
smiData.Solid(1).PoI = [-1.5574468286646754e-08 -8.8817841970012523e-08 2.475872592969466e-08];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Base*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 770.20154808587245;  % kg
smiData.Solid(2).CoM = [0.00015887974976504625 49.461334035063551 0.00028216588634644185];  % cm
smiData.Solid(2).MoI = [1144747.149455952 937424.94426358375 1092260.1750746712];  % kg*cm^2
smiData.Solid(2).PoI = [-4.7535235488396133 -8.9999295297903625 -8.8163666836772521];  % kg*cm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Cyliner*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 27.170796326794893;  % kg
smiData.Solid(3).CoM = [0 0 0];  % m
smiData.Solid(3).MoI = [0.11484789753539004 4.4083959766479781 4.3388327396572466];  % kg*m^2
smiData.Solid(3).PoI = [0 0 0];  % kg*m^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Link1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 21.570796326794898;  % kg
smiData.Solid(4).CoM = [0 0 0];  % m
smiData.Solid(4).MoI = [0.091514564202056753 2.2731102162248469 2.2175469792341147];  % kg*m^2
smiData.Solid(4).PoI = [0 0 0];  % kg*m^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Link2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 28.570796326794898;  % kg
smiData.Solid(5).CoM = [0 0 0];  % m
smiData.Solid(5).MoI = [0.1206812308687235 5.1000635442553817 5.0270003072646494];  % kg*m^2
smiData.Solid(5).PoI = [0 1.0179858080015313e-15 0];  % kg*m^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "End-effector*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(1).Rz.Pos = 0.0;
smiData.CylindricalJoint(1).Pz.Pos = 0.0;
smiData.CylindricalJoint(1).ID = "";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.CylindricalJoint(1).Rz.Pos = -88.794875022299621;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % cm
smiData.CylindricalJoint(1).ID = "[Link1-1:-:Link2-2]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(5).Rz.Pos = 0.0;
smiData.RevoluteJoint(5).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 1.2433787851539526;  % deg
smiData.RevoluteJoint(1).ID = "[Link1-1:-:Cyliner-1]";

smiData.RevoluteJoint(2).Rz.Pos = -88.794875022299522;  % deg
smiData.RevoluteJoint(2).ID = "[Link2-1:-:Link1-2]";

smiData.RevoluteJoint(3).Rz.Pos = 91.205124977700336;  % deg
smiData.RevoluteJoint(3).ID = "[Link1-2:-:Link2-2]";

smiData.RevoluteJoint(4).Rz.Pos = 89.961746192546528;  % deg
smiData.RevoluteJoint(4).ID = "[Link2-1:-:Cyliner-1]";

smiData.RevoluteJoint(5).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(5).ID = "[Cyliner-1:-:Base-1]";

