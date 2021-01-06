int [] [] tabtomat ( int [] tab , int w , int h )
{
  int k=0;
  int [] [] matrix = new int [w][h];
  for (int i=0 ; i< w ; i++ )
  {
      for (int j=0 ; j< h ; j++ )
  {
          matrix[i][j]=tab[k];
          k++;
  }
    
  }
  return matrix;
}


void updatematrix(int [][] a , int [][]b , int x , int y,int dx , int dy)
{
  int k=0;
  int kl=0;
  for (int i=x ; i<x+dx ; i++)
  {
      for (int j=y ; j<y+dy ; j++)
     {
       a[i][j]=b[kl][k];
       k++;
     }
     k=0;
     kl++;
  }
}


int [] mattotab(int [][]a)
{
  int [] toreturn = new int [a.length*a[0].length];
  int k=0;
    for (int i=0 ; i<a.length ; i++ )
  {
      for (int j=0 ; j< a[0].length ; j++ )
  {
          toreturn[k]=a[i][j];
          k++;
  }
  }
      return toreturn;
}

void clean (int [] a)
{
  for (int i=0 ; i<len(a) ; i++)
  {
    a[i]=0;
  }
}

int [] addarray(int [] a , int [] b )
{
  int [] c = new int [a.length];
  for (int i=0 ; i<a.length ; i++)
  {
    c[i]=a[i]+b[i];
  }
  return c;
}
