// const { OUT_FORMAT_OBJECT } = require("oracledb");
// const connect = require("./controllers/connect")

// const generic = async () => {
//     console.log("running")

//     const connection = await connect()

//     const description =
//       '<br>[Official Blog](http://blog.livedoor.jp/isayamahazime/)\n\nAfter graduating from Oita Prefectural Hitarinkou High School, he matriculated in the cartoon design program of the cartoon arts department at Kyushu Designer Gakuin. After graduating, he moved to Tokyo and started drawing his manga works.\n\nIn 2006, he applied for the Magazine Grand Prix known as MGP promoted by Kodansha Ltd. and his work <em>Attack on Titan</em> was given the "Fine Work" award. Originally, he offered his work to the Weekly Shonen Jump department at Shueisha, where he was advised to modify his style and story to be more suitable for Weekly Shonen Jump. He declined and instead, decided to take it to the Weekly Shonen Magazine department at Kodansha Ltd.\n\nIn 2008, he applied for the 80th Weekly Shonen Magazine Freshman Manga Award, where his work "Heart Break One" was given the Special Encouragement Award. His other work "orz" was chosen as a selected work in the 81st Weekly Shonen Magazine Freshman Manga Award.\n\nIn 2009, his first serialized work _Attack on Titan_ appeared in Bessatsu Shonen Magazine, a monthly magazine. It later was awarded the Shonen category of the 35th Kodansha Manga Award in 2011.';


//     const staffid = 1

//     await connection.execute(`
//         UPDATE STAFF SET DESCRIPTION = :description WHERE STAFF_ID = :staffid
//     `, [description, staffid], {autoCommit: true})

//     await connection.close()
// }

// generic()


class Comment {
  constructor(
    commentId,
    commentBody,
    parentId,
    userId,
    threadId,
    dateOfCreation
  ) {
    this.commentId = commentId;
    this.commentBody = commentBody;
    this.parentId = parentId;
    this.userId = userId;
    this.threadId = threadId;
    this.dateOfCreation = dateOfCreation;
    this.children = [];
  }

  addChild(childComment) {
    this.children.push(childComment);
  }
}

// Function to build comment tree recursively
function buildCommentTree(comments, parentId = null) {
  const rootComments = comments.filter(
    (comment) => comment.parentId === parentId
  );
  if (rootComments.length === 0) {
    return [];
  }
  return rootComments.map((comment) => {
    const children = buildCommentTree(comments, comment.commentId);
    comment.children = children;
    return comment;
  });
}

// Example usage:
const comments = [
  new Comment(1, "First comment", null, 1, 1, new Date()),
  new Comment(2, "Reply to first comment", 1, 2, 1, new Date()),
  new Comment(3, "Reply to reply", 2, 3, 1, new Date()),
];

const commentTree = buildCommentTree(comments);
console.log(commentTree)

function printCommentTree(comment, depth = 0) {
  console.log(
    " ".repeat(depth * 4) + `${comment.commentId}: ${comment.commentBody}`
  );
  comment.children.forEach((child) => printCommentTree(child, depth + 1));
}

// Example usage to print the comment tree
commentTree.forEach((rootComment) => printCommentTree(rootComment));
