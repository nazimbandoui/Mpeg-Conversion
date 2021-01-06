boolean matrixequal ( int [][] a , int [][] b)
{
  for (int i = 0 ; i <a.length ; i++)
  {
      for (int j = 0 ; j <a[0].length ; j++)
    {
      if (a[i][j]!=b[i][j])
      return false;
    }
  }
  return true;
}

//matrix equals tab
boolean met(int [][]a , int [] b )
{
  int l=0;
  for (int i = 0 ; i <a.length ; i++)
  {
      for (int j = 0 ; j <a[0].length ; j++)
    {
      if (a[i][j]!=b[l])
      return false;
      l++;
    }
  }
  return true;
}
