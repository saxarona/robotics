% We need to solve using these
a = 10
b = 10
d = 10
betaang = 75
thetaang = 80

% Additional data for inverse kinematics

function P = forwardKinematics(a, d, b, thetaang, betaang)
    a_vec = [a,0,0];
    d_vec = [-d * cos(thetaang),0,d * sin(thetaang)];
    b_vec = [b * cos(betaang), 0, -b * sin(betaang)];

    P = a_vec + d_vec - b_vec
end

p = forwardKinematics(a, d, b, thetaang, betaang);

