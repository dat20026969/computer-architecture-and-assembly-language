#include <iostream>

void xuatNhiPhan(char a[]) {
	for (int b = 15; b >= 0; b--) {
		if (b == 7){
			std::cout << " ";
		}
		std::cout << a[b];
	}
	std::cout << std::endl;
}

void layBits(int n,char a[]){
	for (int b = 15; b >= 0; b--) {
		int c = n >> b;
		if (c & 1){
			a[b] = '1';
		}
		else{
			a[b] = '0';
		}
	}
}

void xorBits(char a[]) {
	for (int b = 15; b >= 0; b--) {
		if (a[b] == '1')
			a[b] = '0';
		else
			a[b] = '1';
	}
}

void bu2(char a[]) {
	char tamThoi = '0';
	for (int b = 0; b < 16; b++) {
		char position = a[b];
		if (a[b] == '0') {
			if (tamThoi == '0') {
				a[b] = '1';
				break;
			}
			else {
				a[b] = '1';
				tamThoi = '0';
			}
		}
		else {
			if (a[b] == '1') {
				a[b] = '0';
				tamThoi = '1';
			}
		}
		if (tamThoi == '0'){
			 break;
		}
	}
}

int decimal(char a[]) {
	for (int b = 15; b >= 0; b--) {
		if (a[b] == '1'){
			a[b] = '0';
		}
		else{
			a[b] = '1';
		}
	}
	return 0;
}

int main() {
	char a[16];
	int A;
	std::cout << "Nhap so nguyen A tuoi dang thap phan: " << std::endl;
	std::cin >> A;
	layBits(A,a);
	std::cout << "So A duoi dang nhi phan la: ";
	xuatNhiPhan(a);
	xorBits(a);
	std::cout << "So A(Nhi phan sau khi dao bit la: ";
	xuatNhiPhan(a);
	std::cout << "So doi cua A sau khi bu` 2 la (-A): ";
	bu2(a);
	xuatNhiPhan(a);
	std::cout << "So doi cua A duoi dang thap phan la (-A): " << -A << std::endl; 
	return 0;
}

