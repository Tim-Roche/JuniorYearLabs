function ang = getAngle(test,reference)
    r = real(test);
    im = imag(test);
    ref_r = real(reference);
    ref_im = imag(reference);
  
    ang = atan2d((ref_im - im),((ref_r - r)));
end