function n = digit_counter(file)
fid = fopen(file,'rt'); % Permission to read the file
if fid<0
  n = -1; % It is error message, if we have a problem opening the file
  return;
end
A = fread(fid,inf,'*char');
digitStr = A(isstrprop(A,'digit'));

n=length(digitStr);
fclose(fid);
end