sd_MAD = function(x)
{
  md=median(x)
  vd=(abs(x-md))
  mdvd=median(vd)
  s=1.48*mdvd
  return(s)
}