import java.util.*;

// Angka Zig Zag
public class soal6 {

    public static int aj[][] = new int[99][99];

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int jumlahUjian;
        int hitung = 0;
        Vector<Integer> jumlahAngka = new Vector();
        // jumlahUjian, Jumlah Angka, aj
        System.out.println("Jumlah Ujian: ");
        jumlahUjian = sc.nextInt();
        for (int i = 0; i < jumlahUjian; i++) {
            System.out.print("Jumlah Angka: ");
            jumlahAngka.addElement(sc.nextInt());
            for (int j = 0; j < jumlahAngka.elementAt(i); j++) {
                System.out.print("Masukan Angka " + (j + 1) + " : ");
                aj[i][j] = sc.nextInt();
                System.out.println();
            }
        }

        //

        // Baris Kolom
        for (int x = 0; x < jumlahUjian; x++) {
            for (int i = 0; i < jumlahAngka.elementAt(x); i++) {
                for (int j = i + 1; j < jumlahAngka.elementAt(x); j++) {
                    for (int k = j + 1; k < jumlahAngka.elementAt(x); k++) {
                        System.out.println(aj[x][i] + " , " + aj[x][j] + " , " + aj[x][k]);
                        // x i = a
                        // x j = b
                        // x k = c
                        if ((aj[x][i] > aj[x][j] && aj[x][j] < aj[x][k])
                                || (aj[x][i] < aj[x][j] && aj[x][j] > aj[x][k])) {
                            hitung++;
                        }
                    }
                }
            }
            System.out.println("##### " + hitung + " #####");
            hitung = 0;
            System.out.println();
        }
    }
}