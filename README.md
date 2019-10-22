## Usage

Build a local sdk with [this patch](https://gist.github.com/jakemac53/956561caf713f2641925ee3cc048a319).

Run `build_runner` in watch mode with `pub run build_runner watch`. This will
keep the patch files up to date.

Run tests with `pub run test test/person_test.dart`.

You can add fields to the `lib/person.dart` file, or create new files under
lib to create new serializable types following the same pattern and see
your changes reflected in the test and generated patch files.
