import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool wasTapped = false;
  TextEditingController txtController = TextEditingController();
  List<int> searchList = [];

  Map<String, String> powerDetail = {
    "Reactive adaptation/evolution":
        "Ability to develop a resistance or immunity to whatever they were injured by or exposed to. This effect can be permanent or temporary.",
    "Empathy":
        "Ability to read or sense the emotions or control the emotions or feelings of others",
    "Hydrokinesis":
        "Ability to control, generate or absorb water and moisture.",
    "Magnetism manipulation": "Ability to control or generate magnetic fields",
    "Energy sourcing":
        "Ability to draw power from large or small but abundant sources of energy, such as turning kinetic energy into physical blasts or converting solar energy into other forms.",
    "Psychic surgery":
        "The ability to remove disease or disorder within or over the body tissue via an energetic incision that heals immediately afterwards.",
    "Portal creation":
        "Ability to create wormholes, portation discs or other spatial portals for transport between two non-adjacent locations",
    "Echolocation":
        "Ability to determine location of objects in the environment by use of reflected sound waves, whether generated by the character or ambient sound. Also known as sonar or radar sense.",
    "Pyrokinesis": "The ability to manipulate fire.",
    "Firebreathing":
        "Ability to generate gases from the body and exhale fire from the mouth.",
    "Elemental transmutation":
        "The ability to alter chemical elements, changing them from one substance to another by rearranging the atomic structure. May be limited to self-transmutation",
    "Divination":
        "The ability to gain insight into a situation by way of an occultic standardized process.",
    "Psychometry":
        "Ability to relate details about the past or future condition of an object or location, usually by being in close contact with it",
    "Energy blasts": "Ability to expel various forms of energy from the body",
    "Merging":
        "Ability to temporarily merge two or more beings into a single being, which results in a completely new and stronger being.",
    "Invulnerability":
        "Ability to be immune to one or more forms of physical, mental, and spiritual damage and influence.",
    "Cross-dimensional awareness":
        "Ability to detect actions and events in other dimensions. This is occasionally used in comics as an awareness of the fourth wall between the characters and the artist or audience.",
    "Inorganic":
        "Ability to transform completely into an inorganic substance while retaining organic properties",
    "Waterbreathing":
        "Ability to respirate through water in lieu of a gaseous medium. Not to be confused with an ability to go without breathing or to be able to breathe an alternative air supply.",
    "Power bestowal": "Ability to bestow powers or jump-start latent powers.",
    "Telesthesia":
        "The ability to see a distant and unseen target using extrasensory perception.",
    "Claircognizance":
        "The ability to acquire psychic knowledge by means of intrinsic knowledge.",
    "X-ray vision": "Ability to see through solid matter",
    "Superhuman strength":
        "Ability to have a level of strength much higher than normally possible given their proportions.",
    "Aura reading":
        "The ability to perceive energy fields surrounding people, places and things.",
    "Air and wind manipulation":
        "Ability to control, generate, or absorb air or wind",
    "Biological manipulation":
        "Ability to control all aspects of a living creature's biological make-up. This includes, but is not limited to, genetic alterations, physical distortion/augmentations, healing, disease, and biological functions.",
    "Microwave manipulation":
        "The ability to convert ambient electromagnetic energy into microwaves and manipulate it into various effects such as heat, light, and radiation",
    "Psionic blast":
        "Ability to overload another's mind causing pain, memory loss, lack of consciousness, vegetative state or death after having created a psionic link into that individual's mind",
    "Possession":
        "Ability to take control and inhabit the body of an individual",
    "Dimensional travel":
        "Ability to travel between two or more dimensions, realities, realms, etc.",
    "Night vision": "The ability to see clearly in total darkness",
    "Liquification": "Ability to turn partially or completely into a liquid",
    "Poison generation":
        "Ability to assault others with one or more varieties of toxins, with widely disparate effects.",
    "Superhuman durability / endurance":
        "Ability to have a higher resistance to one or more forms of damage before being injured as well as the ability to exert oneself in an activity indefinitely without becoming tired or survive for long periods of time without consumption or water.",
    "Superhuman senses":
        "Ability to see, smell, taste, feel or hear more than a normal human.",
    "Animal morphing":
        "Ability to take on animal forms. May be able to take on the abilities of the altered form",
    "Molecular manipulation":
        "Ability to mentally manipulate the molecules of objects or one's self on a molecular level",
    "Animation":
        "Ability to bring inanimate objects to life or to free an individual from petrification",
    "Electrical transportation":
        "Ability to travel through electrical conduits (such as power lines or telephone lines). Can enter through devices such as televisions, electrical poles or computers",
    "Levitation":
        "The ability to undergo bodily uplift or fly by mystical means.",
    "Omnipresence":
        "Ability to be present anywhere and everywhere simultaneously",
    "Elasticity":
        "Ability to stretch, deform, expand or contract one's body into any form imaginable",
    "Scrying":
        "The ability to look into a suitable medium with a view to detect significant information.",
    "Ecological empathy":
        "Ability to sense the overall well-being and conditions of one's immediate environment and natural setting stemming from a psychic sensitivity to nature",
    "Dowsing":
        "The ability to locate water, sometimes using a tool called a dowsing rod.",
    "Self-detonation or explosion and reformation":
        "Ability to explode one's body mass and reform.",
    "Essokinesis":
        "Ability to create, alter, or even destroy reality and the laws it is bound by with the power of the mind.",
    "Prehensile/animated hair": "Ability to animate and lengthen one's hair.",
    "Memory manipulation":
        "Ability to erase or enhance the memories of another",
  };

  Widget searchTextField() {
    return TextField(
      controller: txtController,
      onChanged: (String value) {
        setState(() {
          searchList = [];
          for (int i = 0; i < powerDetail.length; i++) {
            if (powerDetail.keys
                .elementAt(i)
                .toLowerCase()
                .contains(value.toLowerCase())) {
              searchList.add(i);
            }
          }
        });
      },
      autofocus: true, //Display the keyboard when TextField is displayed
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      textInputAction:
          TextInputAction.search, //Specify the action button on the keyboard
      decoration: const InputDecoration(
        //Style of TextField
        enabledBorder: UnderlineInputBorder(
            //Default TextField border
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: UnderlineInputBorder(
            //Borders when a TextField is in focus
            borderSide: BorderSide(color: Colors.white)),
        hintText: 'Search', //Text that is displayed when nothing is entered.
        hintStyle: TextStyle(
          //Style of hintText
          color: Colors.white60,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget searchListView() {
    //add
    return ListView.builder(
        itemCount: searchList.length,
        itemBuilder: (context, index) {
          index = searchList[index];
          var key = powerDetail.keys.elementAt(index);
          return ListTile(
              leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[Text((index + 1).toString())]),
              title: Text(
                "${powerDetail[key]}",
                softWrap: true,
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
              subtitle: Text(key));
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: wasTapped ? searchTextField() : const Text("Search Bar"),
              centerTitle: true,
              actions: wasTapped
                  ? [
                      IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              wasTapped = false;
                            });
                          })
                    ]
                  : [
                      IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            setState(() {
                              wasTapped = true;
                            });
                          })
                    ]),
          body: wasTapped
              ? searchListView()
              : ListView.builder(
                  itemCount: powerDetail.length,
                  itemBuilder: ((context, index) {
                    var key = powerDetail.keys.elementAt(index);
                    return ListTile(
                        leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[Text((index + 1).toString())]),
                        title: Text(
                          "${powerDetail[key]}",
                          softWrap: true,
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        subtitle: Text(key));
                  }),
                )),
    );
  }
}
