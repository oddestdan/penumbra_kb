import 'package:penumbra_mobile/model/format.dart';

getData() {
  return [
    Format(
      format: ".obj",
      title: "Wavefront OBJ",
      mainInfo:
          "The OBJ file format is another neutral heavyweight in the field of 3D printing. It is also widely used in 3D graphics. It was first developed by Wavefront Technologies for its Advanced Visualization animation package.",
      description:
          "Format supports both approximate and precise encoding of surface geometry. When using the approximate encoding, it doesn’t restrict the surface mesh to triangular facets. If the user wants, he can use polygons like quadrilaterals. When using precise encoding, it uses smooth curves and surfaces such as NURBS. The OBJ format can encode color and texture information. This information is stored in a separate file with the extension .MTL (Material Template Library). It does not support any kind of animation. The format specifies both ASCII and binary encodings, but only the ASCII encoding is open source.",
      popularity: 0.90,
      isProprietary: false,
      useCase: "3D graphics, 3D printing.",
      learnMore: "https://en.wikipedia.org/wiki/Wavefront_.obj_file",
    ),
    Format(
      format: ".fbx",
      title: "Filmbox",
      mainInfo:
          "FBX is a proprietary file format which is widely used in the film industry and video games. It was originally developed by Kaydara but was bought by Autodesk in 2006. Ever since the acquisition, AutoDesk has used FBX as an interchange format for its own portfolio which includes AutoCAD, Fusion 360, Maya, 3DS Max and other software packages.",
      description:
          "The FBX file format supports geometry and appearance related properties like color and textures. It also supports skeletal animations and morphs. Both binary and ASCII files are supported.",
      popularity: 0.86,
      isProprietary: true,
      useCase: "Video game industry and film industry.",
      learnMore: "https://en.wikipedia.org/wiki/FBX",
    ),
    Format(
      format: ".stl",
      title: "STereo Lithography",
      mainInfo:
          "STL (STereoLithography) is one of the most important neutral 3D file formats in the domain of 3D printing, rapid prototyping, and computer aided manufacturing. It is native to the stereolithography CAD software made by 3D Systems.",
      description:
          "STL encodes the surface geometry of a 3D model approximately using a triangular mesh. Since it was one of the first 3D file formats to exploit tessellations as a way of encoding surface geometry, it has several backronyms such as “Standard Tessellation Language” and “Standard Triangle Language”. STL ignores appearance, scene, and animations. It is one of the simplest and leanest 3D file formats available today. The STL format specifies both ASCII and binary representations. Binary files are more common since they are more compact.",
      popularity: 0.74,
      isProprietary: false,
      useCase: "3D printing, rapid prototyping, computer aided manufacturing.",
      learnMore:
          "https://all3dp.com/what-is-stl-file-format-extension-3d-printing/",
    ),
    Format(
      format: ".dae",
      title: "COLLADA",
      mainInfo:
          "Collada is a neutral file format used heavily in the video game and film industry. It is managed by the non-profit technology consortium, the Khronos Group.",
      description:
          "The COLLADA format supports geometry, appearance related properties like color, material, textures, and animation. In addition, it is one of the rare formats supporting kinematics and physics. The COLLADA format stores data using the XML markup language.",
      popularity: 0.68,
      isProprietary: false,
      useCase: "Film industry, video game industry.",
      learnMore: "https://www.khronos.org/collada/",
    ),
    Format(
      format: ".gltf / .glb",
      title: "GL Transmission Format",
      mainInfo:
          "glTF is a file format for 3D scenes and models using the JSON standard. It is an API-neutral runtime asset delivery format developed by the Khronos Group 3D Formats Working Group. It was announced at HTML5DevConf 2016.",
      description:
          "GL Transmission Format is a royalty-free specification for the efficient transmission and loading of 3D scenes and models by applications. glTF minimizes both the size of 3D assets, and the runtime processing needed to unpack and use those assets. glTF defines an extensible, common publishing format for 3D content tools and services that streamlines authoring workflows and enables interoperable use of content across the industry.",
      popularity: 0.54,
      isProprietary: false,
      useCase: "Conversion, multifunctional due to open-source.",
      learnMore: "https://www.khronos.org/gltf/",
    ),
    Format(
      format: ".3ds",
      title: "3D Studio",
      mainInfo:
          "3DS is a proprietary file format used in architecture, engineering, education, and manufacturing. It is native to the old Autodesk 3D Studio DOS, a popular modeling software which was later replaced by its successor 3D Studio MAX in 1996. Developed in the 90s, it is one of the oldest 3D file formats. It has become one of the de facto industry standards for storing 3D models or for interchanging between two other proprietary formats.",
      description:
          "The 3DS file format retains only the most basic information about geometry, appearance, scene, and animation. It uses a triangular mesh to encode the surface geometry approximately, the total number of triangles being limited to 65536. It stores appearance related properties like color, texture, material, transmissivity etc. Scene information such camera position, lights can also be stored, but the format does not support directional light sources.",
      popularity: 0.44,
      isProprietary: true,
      useCase: "Architecture, engineering, education, and manufacturing.",
      learnMore: "https://en.wikipedia.org/wiki/.3ds",
    ),
    Format(
      format: ".igs / .iges",
      title: "Initial Graphics Exchange Specification",
      mainInfo:
          "IGES (pronounced eye-jess) is a neutral old timer used primarily in the defense industry and in the field of engineering. It was developed in the mid-seventies by the US Air Force. The IGES format was developed by the Air Force in partnership with Boeing and others in order to serve as an interchange format that can be shared across all CAD systems.",
      description:
          "The IGES format is an ASCII encoding that is extremely flexible when it comes to representing surface geometry. It has the ability to use circuit diagrams, wireframes, precise free-form surfaces or CSG for storing geometry related information. The format can also store colors but does not support material properties like textures, material type etc. Animation is also not supported.",
      popularity: 0.42,
      isProprietary: false,
      useCase: "Defense, engineering.",
      learnMore: "https://en.wikipedia.org/wiki/IGES",
    ),
    Format(
      format: ".stp",
      title: "Standard for Exchange Product Data",
      mainInfo:
          "STEP (The Standard for the Exchange for Product Data) or ISO 10303 was developed as a successor of the IGES file format. It is widely used in engineering related fields like automotive and aeronautic engineering, building construction etc.",
      description:
          "The STEP format supports all the features supported by the IGES format. In addition, it can also encode topology, geometrical tolerances, material properties like textures, material types, and other complex product data. STEP, like IGES, is a popular format for interchange of data between CAD, CAM and CAE software programs.",
      popularity: 0.34,
      isProprietary: false,
      useCase: "Engineering e.g. automotive, aerospace, building construction.",
      learnMore: "https://www.engineeringclicks.com/iges-vs-step/",
    ),
    Format(
      format: ".wrl",
      title: "Virtual Reality Modeling Language / X3D",
      mainInfo:
          "The last 3D file format we will discuss is VRML and X3D. VRML (pronounced vermal and having the file extension .WRL) stands for Virtual Reality Modeling Language. It is a 3D file format that was developed for the World Wide Web. It has been succeeded by X3D.",
      description:
          "X3D is an XML based 3D file format. It supports all features of the VRML format along with some additions. The VRML format uses a polygonal mesh to encode surface geometry and can store appearance related information such as color, texture, transparency etc. The X3D format adds NURBS encoding of the surface geometry, the capability of storing scene related information and support for animation.",
      popularity: 0.28,
      isProprietary: false,
      useCase: "Internet and the web.",
      learnMore: "https://www.web3d.org/getting-started-x3d",
    ),
  ];
}
