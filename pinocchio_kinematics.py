from casadi import *
import casadi_kin_dyn.py3casadi_kin_dyn as cas_kin_dyn

urdf_path = "models/digit_w_grippers.urdf"
f = open(urdf_path)
urdf = f.read()
kin = cas_kin_dyn.CasadiKinDyn(urdf)

left_wrist_str = kin.fk("left_wrist")
left_wrist = Function.deserialize(left_wrist_str)

right_wrist_str = kin.fk("right_wrist")
right_wrist = Function.deserialize(right_wrist_str)

left_foot_str = kin.fk("left_foot")
left_foot = Function.deserialize(left_foot_str)

right_foot_str = kin.fk("right_foot")
right_foot = Function.deserialize(right_foot_str)

com_str = kin.centerOfMass()
com = Function.deserialize(com_str)

J_left_wrist_str = kin.jacobian("left_wrist", kin.LOCAL)
J_left_wrist = Function.deserialize(J_left_wrist_str)

J_right_wrist_str = kin.jacobian("right_wrist", kin.LOCAL)
J_right_wrist = Function.deserialize(J_right_wrist_str)

J_left_foot_str = kin.jacobian("left_foot", kin.LOCAL)
J_left_foot = Function.deserialize(J_left_foot_str)

J_right_foot_str = kin.jacobian("right_foot", kin.LOCAL)
J_right_foot = Function.deserialize(J_right_foot_str)
 

mfile = left_wrist.export_code("matlab")
mf = open("fk_fxns/left_wrist.m", "w")
mf.write(mfile)
mf.close()

mfile = right_wrist.export_code("matlab")
mf = open("fk_fxns/right_wrist.m", "w")
mf.write(mfile)
mf.close()

mfile = left_foot.export_code("matlab")
mf = open("fk_fxns/left_foot.m", "w")
mf.write(mfile)
mf.close()

mfile = right_foot.export_code("matlab")
mf = open("fk_fxns/right_foot.m", "w")
mf.write(mfile)
mf.close()

mfile = com.export_code("matlab")
mf = open("fk_fxns/com.m", "w")
mf.write(mfile)
mf.close()

mfile = J_left_wrist.export_code("matlab")
mf = open("fk_fxns/J_left_wrist.m", "w")
mf.write(mfile)
mf.close()

mfile = J_right_wrist.export_code("matlab")
mf = open("fk_fxns/J_right_wrist.m", "w")
mf.write(mfile)
mf.close()

mfile = J_left_foot.export_code("matlab")
mf = open("fk_fxns/J_left_foot.m", "w")
mf.write(mfile)
mf.close()

mfile = J_right_foot.export_code("matlab")
mf = open("fk_fxns/J_right_foot.m", "w")
mf.write(mfile)
mf.close()