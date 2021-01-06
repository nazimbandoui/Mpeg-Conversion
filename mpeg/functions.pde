//calculer MSE
float[] msemarray ( int [] a , int [] b )
{
   
  float [] x = new float [a.length];
  float z;
   for (int i = 0 ; i<a.length ; i++)
  {
   z=a[i]-b[i];
   x[i]=z*z;
  }

  return x;
}

//Somme d'un tableau
float mse (float a [])
{
  float s=0;
    for (int i = 0 ; i<a.length ; i++)
    {
     s=s+a[i];
    }
   return s/a.length;
}

//creation d'un bloc x,y coor de depart , dx,dy taille du bloc , img pixels de l'image , w et h taille de l'image

int [] createblock(int x , int y ,int dx ,int dy ,int[] img, int w)
{
 int []toreturn = new int [dx*dy];
 int k=0;
int z =0;

if (y-1<0)
z = x;
else
z = (y-1)*w+x;

 for (int j=0 ; j< dy; j++)
 {
    for (int i=0 ; i< dx; i++)
   {
     toreturn[k]=img[z+i+(j*w)] ;
        k++;
   }

 }
 return toreturn;
}


int [] fetchblock(int [] blockinput ,int [] image , int x ,int y ,int dx ,int dy , int px , int py, int w , int h)
{
  int retx =x-px , rety = y-py;
  int temp[];
  int []toreturn=createblock(x,y,dx,dy,image,w);
  float valmse=mse(msemarray(blockinput,toreturn));
 
 for (int i=x-px ; i< x+px; i++)
 {
   if (i>=0 && i<=w-dx)
   {
    for (int j=y-py ; j< y+py ; j++)
   {
     if(j>=0 && j<=h-dy)
     {
     temp=createblock(i,j,dx,dy,image,w);
     
     if (mse(msemarray(temp,blockinput))<valmse)
     {
       valmse=mse(msemarray(temp,blockinput));
       toreturn=createblock(i,j,dx,dy,image,w);
     }
     }
   }
   }
 }
 return toreturn;
 
}


void pixelupdate(int startx2 , int starty2 , int dx, int dy , int w , int [] block , int [] image)
{
  int z=0;
  if (starty2<=1)
  z=startx2;
  else
  z=(starty2-1)*w+startx2;
  int y=0;

for (int j=0; j<dy; j++)
{
  for (int i=0; i<dx; i++)
  {
    image[z+i+(j*w)]=block[y];
    y++;
  }
}
}
