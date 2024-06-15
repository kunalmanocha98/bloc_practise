import 'package:flutter/cupertino.dart';

abstract class SampleEvent {}
class OnShowEvent1 extends SampleEvent{
  final BuildContext context;
  OnShowEvent1(this.context);
}
class OnHideEvent1 extends SampleEvent {
  final BuildContext context;
  OnHideEvent1(this.context);
}


abstract class SampleEvent2{}
class onShowEvent2 extends SampleEvent2{}
class onHideEvent2 extends SampleEvent2{}
