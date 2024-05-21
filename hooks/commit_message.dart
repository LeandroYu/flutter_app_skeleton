// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  final commitMessageFile = File('.git/COMMIT_EDITMSG');

  if (!commitMessageFile.existsSync()) {
    print('Commit message file does not exist.');
    exit(1);
  }

  final commitMessage = commitMessageFile.readAsStringSync();

  if (!isValidCommitMessage(commitMessage)) {
    print('👎 Invalid commit message format.');
    print(
        'Commit message must match the pattern: (bugfix|feature|improvement|refactor|version)-<issue-code or sprint>: <fix-message>');
    exit(1);
  }

  print('👍 Valid commit message!');
  exit(0);
}

bool isValidCommitMessage(String commitMessage) {
  final RegExp pattern = RegExp(
      r'^(bugfix|feature|improvement|refactor|version)-[A-Z0-9]+-[0-9]+: .+');
  return pattern.hasMatch(commitMessage);
}
