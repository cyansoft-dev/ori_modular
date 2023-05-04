mixin Entity {}

abstract class ResponseToEntity<Entity, String> {
  Entity transposeTo(String bodyString);

  String transposeFrom(Entity entity);
}
