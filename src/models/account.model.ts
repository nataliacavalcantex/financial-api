import { ObjectType, Field } from '@nestjs/graphql';

@ObjectType()
export class AccountModel {
  @Field(() => String)
  account_Id: string;

  @Field(() => String)
  account_Type: string;

  @Field(() => String)
  account_Balance: number;

  @Field(() => String)
  account_Limit: number;

  @Field(() => String)
  accountOwnerId: string;

  @Field(() => String)
  account_CreatedAt: string;

  @Field(() => Date)
  account_UpdatedAt: Date;
}
