/* Somar duas matrizes

Pretende-se um programa que permita somar duas matrizes m x n e guardar o resultado numa terceira matriz. */
#include <stdio.h>
 
const maxsize = 10;
 
int main() {
  int a[maxsize][maxsize],b[maxsize][maxsize],c[maxsize][maxsize];
  int i,j,m,n;
 
  printf("Ordem das matrizes: ");
  scanf("%d%d",&m,&n);
  if( ( m <= maxsize ) && ( n <= maxsize ) ) {
 
    printf("Elementos da matriz A\n");
    for(i=0;i < m;i++)
      for(j=0;j < n;j++) {
        printf("a[%d,%d]: ",i+1,j+1);
        scanf("%d",&a[i][j]);
      }
 
    printf("Elementos da matriz B\n");
    for(i=0;i < m;i++)
      for(j=0;j < n;j++) {
        printf("b[%d,%d]: ",i+1,j+1);
        scanf("%d",&b[i][j]);
      }
 
    printf("Calculando os elementos da matriz C\n");
    for(i=0;i < m;i++)
      for(j=0;j < n;j++)
        c[i][j]=a[i][j]+b[i][j];
 
    printf("Resultado: \n");
    for(i=0;i < m;i++) {
      for(j=0;j < n;j++)
        printf("%5d ",c[i][j]);
      printf("\n");
    }
  }
}
