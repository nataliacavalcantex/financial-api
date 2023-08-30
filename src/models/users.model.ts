import { ObjectType, Field } from '@nestjs/graphql';

@ObjectType()
export class UserModel {
  @Field(() => String)
  user_Id: string;

  @Field(() => String)
  user_Email: string;

  @Field(() => String)
  user_FirstName: string;

  @Field(() => String)
  user_LastName: string;

  @Field(() => String)
  user_Address: string;

  @Field(() => String)
  user_PasswordHash: string;

  @Field(() => Date)
  user_BirthDate: Date;

  @Field(() => String)
  user_Account: string;

  @Field(() => String)
  user_Role: string;

  @Field(() => String)
  user_CreatedAt: string;
  @Field(() => Date)
  user_UpdatedAst: Date;
}
