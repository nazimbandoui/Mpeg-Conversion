
void printmatrix (int [] [] a)
{
  for (int i =0 ; i<a.length ; i++)
  {
    for (int j =0 ; j<a[0].length ; j++)
    {
      print(a[i][j]+" ");
    }
    print("\n");
  }
}

void printarray (int [] a)
{
  for(int i =0 ; i<a.length ; i++)
  {
    print(a[i]+" ");
  }
}

void printarray (float [] a)
{
  for(int i =0 ; i<a.length ; i++)
  {
    print(a[i]+" ");
  }
}


int len(int a[])
{
  return a.length;
}
int len(int [] [] a)
{
  return a.length;
}

void dim(int [] [] a)
{
  print (len(a)+"x"+len(a[0])+"\n");
}
void printxy(int x ,int y)
{
  print(x+"x"+y+"\n");
}
