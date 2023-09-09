import 'package:bluesky/bluesky.dart';

void main(List<String> arguments) async {
  final bsky = Bluesky.anonymous();

  final subscription = await bsky.sync.subscribeRepoUpdates();

  subscription.data.stream.listen((event) {
    print(event);
  });
}
