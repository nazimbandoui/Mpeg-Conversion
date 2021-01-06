/*
int [] correct (int [] a , int x ,int y)
{
  int[] toreturn = new int [x*y+8*x];
  int newi=0;
  
  for(int i=0 ; i<a.length ; i++)
  {
    toreturn[i]=a[i];
    newi=i;
  }
  newi++;
  for (int i=newi;i<toreturn.length;i++)
  {
    toreturn[i]=255;
  }
  return toreturn;
  
}
*/
//diiference entre les 2 images
void f1 (int w , int h , int [] img1 , int [] img2)
{
for ( int i=0 ; i<w ; i=i+16)
 {
    for( int j=0 ; j<h ; j=j+16)
     {
       int [] f1 = createblock(i,j,dx,dy,img2,w);
       int bestmatch[] = fetchblock(f1,img1,i,j,dx,dy,px,py,w,h);
      pixelupdate(i,j,dx,dy,w,bestmatch,img3.pixels);
      
      
     }
 }
}

// + resudius
void f2 (int w , int h , int [] img1 , int [] img2)
{
for ( int i=0 ; i<w ; i=i+16)
 {
    for( int j=0 ; j<h ; j=j+16)
     {
       int [] f1 = createblock(i,j,dx,dy,img2,w);
       int bestmatch[] = fetchblock(f1,img1,i,j,dx,dy,px,py,w,h);
       int [] diff = diff(f1,bestmatch);
       bestmatch =addarray(bestmatch,diff);
      pixelupdate(i,j,dx,dy,w,bestmatch,img3.pixels);
      
      
     }
 }
}

//residus
void f3 (int w , int h , int [] img1 , int [] img2)
{
for ( int i=0 ; i<w ; i=i+16)
 {
    for( int j=0 ; j<h ; j=j+16)
     {
       int [] f1 = createblock(i,j,dx,dy,img2,w);
       int bestmatch[] = fetchblock(f1,img1,i,j,dx,dy,px,py,w,h);
       int [] diff = diff(f1,bestmatch);
      pixelupdate(i,j,dx,dy,w,diff,img3.pixels);
      
      
     }
 }
}

int[] diff ( int [] a , int [] b)
{
  int [] result = new int [a.length];
  for (int i =0 ; i< a.length ; i++)
  {
    result[i]=a[i]-b[i];

  }
  return result;
}
