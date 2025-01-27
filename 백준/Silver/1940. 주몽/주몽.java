import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        int m = Integer.parseInt(br.readLine());
        StringTokenizer st = new StringTokenizer(br.readLine());
        int[] numbers = new int[n];
        for(int i=0;i<n;i++){
            numbers[i] = Integer.parseInt(st.nextToken());
        }

        int answer = 0;
        for(int i=1;i<n;i++){
            for(int j=0;j<i;j++){
                if(numbers[i] + numbers[j] == m) answer++;
            }
        }
        System.out.print(answer);
    }
}