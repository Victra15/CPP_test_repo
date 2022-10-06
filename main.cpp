#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

// vector<int> solution(vector<int> array, vector<vector<int>> commands) {
//     vector<int> answer;
//     return answer;
// }

void input_std(vector<int> &answer)
{
	ifstream	i_file("test_case.txt");
	string		data;

	if (i_file.is_open())
	{
		while (getline(i_file, data))
			answer.push_back(stoi(data));
	}
}

int main(void)
{
	vector<int> answer;
	vector<int>::iterator iter;

	input_std(answer);
	for(iter = answer.begin(); iter < answer.end(); iter++)
	{
		cout << (*iter) << endl;
	}
	return (0);
}