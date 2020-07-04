import 'package:test/test.dart';
import 'package:nosoloflutter/models/worker.dart';

void main() {
  test('Worker show the correct name', () {
    Worker worker = Worker(name: 'David');

    expect(worker.name, 'David');
  });

  test('Worker changes name', () {
    Worker worker = Worker(name: 'Andrés');

    worker.name = 'Ana';

    expect(worker.name, isNot('Andrés'));
  });
}
