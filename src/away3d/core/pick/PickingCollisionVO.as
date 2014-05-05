package away3d.core.pick
{

	import away3d.core.base.IMaterialOwner;
	import away3d.core.base.Object3D;

	import flash.geom.*;
	
	/**
	 * Value object for a picking collision returned by a picking collider. Created as unique objects on entities
	 *
	 * @see away3d.entities.Entity#pickingCollisionVO
	 * @see away3d.core.pick.IPickingCollider
	 */
	public class PickingCollisionVO
	{
		/**
		 * The Object3D to which this collision object belongs.
		 */
		public var object:Object3D;
		
		/**
		 * The local position of the collision on the entity's surface.
		 */
		public var localPosition:Vector3D;
		
		/**
		 * The local normal vector at the position of the collision.
		 */
		public var localNormal:Vector3D;
		
		/**
		 * The uv coordinate at the position of the collision.
		 */
		public var uv:Point;
		
		/**
		 * The index of the face where the event took pl ace.
		 */
		public var index:uint;
		
		/**
		 * The index of the subGeometry where the event took place.
		 */
//		public var subGeometryIndex:uint;
		
		/**
		 * The starting position of the colliding ray in local coordinates.
		 */
		public var localRayPosition:Vector3D;
		
		/**
		 * The direction of the colliding ray in local coordinates.
		 */
		public var localRayDirection:Vector3D;
		
		/**
		 * The starting position of the colliding ray in scene coordinates.
		 */
		public var rayPosition:Vector3D;
		
		/**
		 * The direction of the colliding ray in scene coordinates.
		 */
		public var rayDirection:Vector3D;
		
		/**
		 * Determines if the ray position is contained within the entity bounds.
		 *
		 * @see away3d.entities.Entity#bounds
		 */
		public var rayOriginIsInsideBounds:Boolean;
		
		/**
		 * The distance along the ray from the starting position to the calculated intersection entry point with the entity.
		 */
		public var rayEntryDistance:Number;

		/**
		 * The material ownwer associated with a collision.
		 */
		public var materialOwner:IMaterialOwner;

		/**
		 * Creates a new <code>PickingCollisionVO</code> object.
		 *
		 * @param object The Object3D to which this collision object belongs.
		 */
		function PickingCollisionVO(object:Object3D)
		{
			this.object = object;
		}
	
	}
}
