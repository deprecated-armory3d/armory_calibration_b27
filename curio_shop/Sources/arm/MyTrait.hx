package arm;

class MyTrait extends armory.Trait {
	public function new() {
		super();

		notifyOnUpdate(function() {
			var kb = armory.system.Input.getKeyboard();

			if (kb.down("i")) object.transform.loc.z += 0.05;
			if (kb.down("k")) object.transform.loc.z -= 0.05;
			if (kb.down("j")) object.transform.loc.y += 0.05;
			if (kb.down("l")) object.transform.loc.y -= 0.05;
			if (kb.down("u")) object.transform.loc.x += 0.05;
			if (kb.down("o")) object.transform.loc.x -= 0.05;
			object.transform.buildMatrix();
		});
	}
}
